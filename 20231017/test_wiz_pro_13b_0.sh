#!/bin/bash

cd /root/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/Llama-2-13b-hf"
MODEL_NAME="Llama2_13B"

export HF_HOME=/root/scratch/cache
export TRANSFORMERS_CACHE=/root/scratch/cache
export CUDA_VISIBLE_DEVICES=6

# Run TruthfulQA
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks truthfulqa_mc \
    --batch_size 2 \
    --output_path results/$MODEL_NAME/TruthfulQA.json \
    --no_cache \
    --device cuda

# Run ARC
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks arc_challenge \
    --batch_size 2 \
    --output_path results/$MODEL_NAME/ARC.json \
    --no_cache \
    --device cuda \
    --num_fewshot 25

# Run HellaSwag
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks hellaswag \
    --batch_size 2 \
    --output_path results/$MODEL_NAME/HellaSwag.json \
    --no_cache \
    --device cuda \
    --num_fewshot 10

