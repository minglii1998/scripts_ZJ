cd ~/scratch/FastChat

export WANDB_MODE=dryrun
export CUDA_VISIBLE_DEVICES=4,5,6,7

array=(
    5
    10
    15
)
for i in "${array[@]}"
do
    echo $i
        torchrun --nproc_per_node=4 --master_port=25656 fastchat/train/train_mem.py \
            --model_name_or_path /root/scratch/Llama-2-13b-hf \
            --data_path /root/scratch/scripts_ZHIJIANG/data/data13/alpaca_ori_${i}per_ppl_13b.json \
            --model_prompt vicuna \
            --lazy_preprocess False \
            --cache_dir ../cache \
            --bf16 True \
            --output_dir /root/scratch/trained_models_fs/alpaca_ori_${i}per_ppl_13b_1e5_5epo \
            --num_train_epochs 5 \
            --per_device_train_batch_size 8 \
            --per_device_eval_batch_size 8 \
            --gradient_accumulation_steps 4 \
            --evaluation_strategy "no" \
            --save_strategy "steps" \
            --save_steps 200000 \
            --save_total_limit 1 \
            --learning_rate 1e-5 \
            --weight_decay 0. \
            --warmup_ratio 0.03 \
            --lr_scheduler_type "cosine" \
            --logging_steps 1 \
            --fsdp "full_shard auto_wrap offload" \
            --fsdp_transformer_layer_cls_to_wrap 'LlamaDecoderLayer' \
            --tf32 True \
            --model_max_length 2048 \
            --gradient_checkpointing True 
done

