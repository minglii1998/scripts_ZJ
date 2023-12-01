#!/bin/bash

cd /root/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per5_1e5_3epo"
MODEL_NAME="r_wiz70_pro_v4_ppl_13b_per5_1e5_3epo"

export HF_HOME=/root/scratch/cache
export TRANSFORMERS_CACHE=/root/scratch/cache
export CUDA_VISIBLE_DEVICES=4

# Run TruthfulQA
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks truthfulqa_mc \
    --batch_size 8 \
    --output_path results/$MODEL_NAME/TruthfulQA.json \
    --no_cache \
    --device cuda

# Run ARC
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks arc_challenge \
    --batch_size 8 \
    --output_path results/$MODEL_NAME/ARC.json \
    --no_cache \
    --device cuda \
    --num_fewshot 25

# Run HellaSwag
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks hellaswag \
    --batch_size 8 \
    --output_path results/$MODEL_NAME/HellaSwag.json \
    --no_cache \
    --device cuda \
    --num_fewshot 10

# # Run MMLU
# python main.py \
#     --model hf-causal-experimental \
#     --model_args pretrained=$MODEL_PATH \
#     --tasks hendrycksTest-* \
#     --batch_size 4 \
#     --output_path results/$MODEL_NAME/MMLU.json \
#     --no_cache \
#     --device cuda \
#     --num_fewshot 5

# # Run Extract Result
# python extract_results.py --model_name $MODEL_NAME