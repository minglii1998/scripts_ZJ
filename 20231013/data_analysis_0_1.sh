#!/bin/bash
# Run on 2GPU 1

cd ~/scratch/alpaca_reflection

export CUDA_VISIBLE_DEVICES=1

python cherry_selection_code/data_analysis.py \
    --data_path ~/scratch/scripts_ZHIJIANG/data/r_alp_q.json \
    --save_path ~/scratch/scripts_ZHIJIANG/data_analysis/r_alp_q_analysis.jsonl \
    --model_name_or_path ~/scratch/Llama-2-13b-hf \
    --max_length 2048 \
    --prompt vicuna \
    --start_idx 0 \
    --end_idx -1

python cherry_selection_code/data_analysis.py \
    --data_path ~/scratch/scripts_ZHIJIANG/data/r_alp_qa.json \
    --save_path ~/scratch/scripts_ZHIJIANG/data_analysis/r_alp_qa_analysis.jsonl \
    --model_name_or_path ~/scratch/Llama-2-13b-hf \
    --max_length 2048 \
    --prompt vicuna \
    --start_idx 0 \
    --end_idx -1