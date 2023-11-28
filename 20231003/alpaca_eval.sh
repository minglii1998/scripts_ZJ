#!/bin/bash

cd ~/scratch/alpaca_eval

export OPENAI_API_KEY=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

python inference/alpaca_eval_generation.py \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_gpt4_sharegpt/ \
    --model_name_tag alpaca_gpt4_llama2 \

python inference/alpaca_eval_generation.py \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_sharegpt_format/ \
    --model_name_tag alpaca_sharegpt_format \

python inference/alpaca_eval_generation.py \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_selection_pro_sharegpt/ \
    --model_name_tag alpaca_selection_pro_sharegpt \