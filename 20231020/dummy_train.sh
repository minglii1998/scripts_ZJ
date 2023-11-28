cd ~/scratch/FastChat

export CUDA_VISIBLE_DEVICES=6,7

torchrun --nproc_per_node=2 fastchat/train/train_mem.py \
    --model_name_or_path /root/scratch/Llama-2-13b-hf \
    --data_path /root/scratch/scripts_ZHIJIANG/data/alpaca_data_vic_wiz_llama2_sharegpt_format.json \
    --model_prompt vicuna \
    --lazy_preprocess False \
    --cache_dir ../cache \
    --bf16 True \
    --output_dir /root/scratch/trained_models_fs/Dummy_train \
    --num_train_epochs 15 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 8 \
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
