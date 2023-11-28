#!/bin/bash

cd ~/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/alpaca_sharegpt_format/"
MODEL_NAME="alpaca_sharegpt_format"

export CUDA_VISIBLE_DEVICES=0
# Run TruthfulQA
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks truthfulqa_mc \
    --batch_size 1 \
    --output_path results/$MODEL_NAME/TruthfulQA.json \
    --no_cache \
    --device cuda

# Run MMLU
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks hendrycksTest-* \
    --batch_size 1 \
    --output_path results/$MODEL_NAME/MMLU.json \
    --no_cache \
    --device cuda \
    --num_fewshot 5
