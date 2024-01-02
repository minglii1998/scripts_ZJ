#!/bin/bash

cd /root/scratch/alpaca_eval

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_kmeans_100_gpt2_5per_sharegpt_13b_1e5_5epo/ \
    --model_name_tag alpaca_kmeans_100_gpt2_5per_sharegpt_13b_1e5_5epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_kmeans_100_gpt2_10per_sharegpt_13b_1e5_5epo/ \
    --model_name_tag alpaca_kmeans_100_gpt2_10per_sharegpt_13b_1e5_5epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_kmeans_100_gpt2_15per_sharegpt_13b_1e5_5epo/ \
    --model_name_tag alpaca_kmeans_100_gpt2_15per_sharegpt_13b_1e5_5epo \
