#!/bin/bash
# Run on 2GPU

cd ~/scratch/lm-evaluation-harness

# Define common parameters
MODEL_PATH="/root/scratch/trained_models_fs/Reflection_Alp_QA_13b_2epo/"
MODEL_NAME="Reflection_Alp_QA_13b_2epo"

export CUDA_VISIBLE_DEVICES=1
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