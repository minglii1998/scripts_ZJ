#!/bin/bash

cd /root/scratch/alpaca_eval

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_ori_5per_loss_13b_1e5_5epo/ \
    --model_name_tag alpaca_ori_5per_loss_13b_1e5_5epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_ori_llama2_1e5_5epo_13b/ \
    --model_name_tag alpaca_ori_llama2_1e5_5epo_13b \

