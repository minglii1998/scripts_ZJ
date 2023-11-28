#!/bin/bash

cd ~/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/alpaca_gpt4_sharegpt/"
MODEL_NAME="alpaca_gpt4_llama2"
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


# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/alpaca_data_vic_wiz_llama2_sharegpt_format_2epo/"
MODEL_NAME="alpaca_ensemble_v1_2epo"
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