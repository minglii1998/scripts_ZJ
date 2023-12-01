#!/bin/bash

cd /root/scratch/alpaca_eval

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/wiz70_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo/ \
    --model_name_tag wiz70_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo_1201 \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per2_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per2_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per3_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per3_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per5_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per5_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per10_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per10_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per30_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per30_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per50_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per50_1e5_3epo \

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz70_pro_v4_ppl_13b_per70_1e5_3epo/ \
    --model_name_tag r_wiz70_pro_v4_ppl_13b_per70_1e5_3epo \