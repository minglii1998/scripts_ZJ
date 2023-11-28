cd ~/scratch/FastChat

export CUDA_VISIBLE_DEVICES=0,1,2,3

torchrun --nproc_per_node=4 --master_port=25659 fastchat/train/train_mem.py \
    --model_name_or_path ~/scratch/Llama-2-13b-hf \
    --data_path ~/scratch/scripts_ZHIJIANG/data/wizardlm_V2_196k_sharegpt.json \
    --model_prompt vicuna \
    --lazy_preprocess False \
    --cache_dir ../cache \
    --bf16 True \
    --output_dir ~/scratch/trained_models_fs/wizardlm_V2_196k_sharegpt_13b \
    --num_train_epochs 3 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --gradient_accumulation_steps 4 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 200000 \
    --save_total_limit 1 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --fsdp "full_shard auto_wrap offload" \
    --fsdp_transformer_layer_cls_to_wrap 'LlamaDecoderLayer' \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True 
