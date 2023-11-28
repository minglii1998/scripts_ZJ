#!/bin/bash

cd ~/scratch/alpaca_reflection

export CUDA_VISIBLE_DEVICES=0

python cherry_selection_code/data_analysis.py \
    --data_path ~/scratch/scripts_ZHIJIANG/data/r_wiz2_ori.json \
    --save_path ~/scratch/scripts_ZHIJIANG/data_analysis/r_wiz2_ori_analysis_0.jsonl \
    --model_name_or_path ~/scratch/Llama-2-13b-hf \
    --max_length 2048 \
    --prompt vicuna \
    --start_idx 0 \
    --end_idx 36000
