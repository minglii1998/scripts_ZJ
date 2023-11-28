#!/bin/bash

cd /root/scratch/alpaca_eval

python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/r_wiz_all_pro_v4_ppl_13b_1e5_3epo/ \
    --model_name_tag r_wiz_all_pro_v4_ppl_13b_1e5_3epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/wiz70_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo/ \
    --model_name_tag wiz70_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo/ \
    --model_name_tag alpaca_selection_pro_v4_ppl_sharegpt_13b_1e5_3epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_selection_pro_v4_ppl_sharegpt_13b_5epo/ \
    --model_name_tag alpaca_selection_pro_v4_ppl_sharegpt_13b_5epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_selection_pro_v4_ppl_sharegpt_13b_3epo/ \
    --model_name_tag alpaca_selection_pro_v4_ppl_sharegpt_13b_3epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/alpaca_selection_pro_v4_ppl_sharegpt_13b_2e5_5epo/ \
    --model_name_tag alpaca_selection_pro_v4_ppl_sharegpt_13b_2e5_5epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/wiz70_selection_pro_v4_ppl_sharegpt_13b_3epo/ \
    --model_name_tag wiz70_selection_pro_v4_ppl_sharegpt_13b_3epo \


python inference/alpaca_eval_generation.py \
    --do_eval False \
    --model_name_or_path /root/scratch/trained_models_fs/wiz70_selection_pro_v4_ppl_sharegpt_13b_5epo/ \
    --model_name_tag wiz70_selection_pro_v4_ppl_sharegpt_13b_5epo \