#!/bin/bash
# Run on 2GPU

cd ~/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/alpaca_ori_small_sharegpt/"
MODEL_NAME="alpaca_ori_small_sharegpt"

export CUDA_VISIBLE_DEVICES=1
# Run ARC
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks arc_challenge \
    --batch_size 1 \
    --output_path results/$MODEL_NAME/ARC.json \
    --no_cache \
    --device cuda \
    --num_fewshot 25

# Run HellaSwag
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks hellaswag \
    --batch_size 1 \
    --output_path results/$MODEL_NAME/HellaSwag.json \
    --no_cache \
    --device cuda \
    --num_fewshot 10

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

# Run TruthfulQA
python main.py \
    --model hf-causal-experimental \
    --model_args pretrained=$MODEL_PATH \
    --tasks truthfulqa_mc \
    --batch_size 1 \
    --output_path results/$MODEL_NAME/TruthfulQA.json \
    --no_cache \
    --device cuda

# Run Extract Result
python extract_results.py --model_name $MODEL_NAME