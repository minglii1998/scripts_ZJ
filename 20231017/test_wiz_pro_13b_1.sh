#!/bin/bash

cd /root/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/Llama-2-13b-hf"
MODEL_NAME="Llama2_13B"

export HF_HOME=/root/scratch/cache
export TRANSFORMERS_CACHE=/root/scratch/cache
export CUDA_VISIBLE_DEVICES=7
# Run MMLU
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks hendrycksTest-* \
    --batch_size 2 \
    --output_path results/$MODEL_NAME/MMLU.json \
    --no_cache \
    --device cuda \
    --num_fewshot 5

# Run Extract Result
python extract_results.py --model_name $MODEL_NAME