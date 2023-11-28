#!/bin/bash

cd ~/scratch/lm-evaluation-harness

# Run Extract Result
python extract_results.py --model_name alpaca_gpt4_llama2
python extract_results.py --model_name alpaca_sharegpt_format
python extract_results.py --model_name wiz_ensemble_ppl_v1_sharegpt_2epo