#!/bin/bash

cd /root/scratch/compare_eval

array=(
    /root/scratch/trained_models_fs/alpaca_gpt2_none_5per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_gpt2_none_10per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_gpt2_none_15per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_sharegpt_format/
)
for i in "${array[@]}"
do
    echo $i
        python generation/generation.py \
            --dataset_name wizardlm \
            --prompt vicuna \
            --model_name_or_path $i \
            --max_length 2048 

done

array=(
    /root/scratch/trained_models_fs/alpaca_gpt2_none_5per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_gpt2_none_10per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_gpt2_none_15per_sharegpt_13b_1e5_5epo/
    /root/scratch/trained_models_fs/alpaca_sharegpt_format/
)
for i in "${array[@]}"
do
    echo $i
        python generation/generation.py \
            --dataset_name vicuna \
            --prompt vicuna \
            --model_name_or_path $i \
            --max_length 2048 
            
done