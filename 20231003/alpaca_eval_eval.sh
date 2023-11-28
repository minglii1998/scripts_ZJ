#!/bin/bash

cd ~/scratch/alpaca_eval

export OPENAI_API_KEY=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

array=(
    results/alpaca_gpt4_llama2/model_outputs.json
)
for i in "${array[@]}"
do
    echo $i
        alpaca_eval --model_outputs $i --annotators_config 'alpaca_eval_gpt4' 
done