#!/bin/bash

cd /root/scratch/alpaca_eval

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz_all_pro_v4_ppl_13b_1e5_5epo/ \
    --model_name_tag r_wiz_all_pro_v4_ppl_13b_1e5_5epo \
