| Testsets               | Chart | Doc   | Info | Trins | Avg    |
|------------------------|-------|-------|------|-------|--------|
| GPT-4o                 | 2.27  | 1.33  | 0.09 | 2.33  | 1.505  |
| Vicuna + trins         | 27.91 | 23.96 | 8.61 | 59.44 | 29.980 |
| Vicuna no trins        | 20.09 | 18.85 | 5.88 | 25.07 | 17.472 |
| colpali best (Q+A)     | 7.94  | 10.33 | 4.93 | 9.93  | 8.282  |


| **Metrics**     | **IoU** | **P**  | **R**  | **F1** | **IoU** | **P**  | **R**  | **F1** | **IoU** | **P**  | **R**  | **F1** | **IoU** | **P**  | **R**  | **F1** | **Average** |
|-----------------|---------|--------|--------|--------|---------|--------|--------|--------|---------|--------|--------|--------|---------|--------|--------|--------|------------|
| **Testsets**    | ChartQA | ChartQA | ChartQA | ChartQA | DocVQA  | DocVQA  | DocVQA  | DocVQA  | Info    | Info   | Info   | Info   | TRINS   | TRINS   | TRINS   | TRINS   |         |
| Phi3 no TRINS   | 54.43   | 64.12  | 61.62  | 60.92  | 65.32   | 72.83  | 71.75  | 70.24  | 43.10   | 55.94  | 51.13  | 51.09  | 65.15   | 77.10   | 69.97   | 70.83   | 62.85     |
| GPT-4o          | 83.80   | 88.80  | 87.47  | 87.14  | 82.14   | 87.14  | 89.50  | 86.16  | 68.19   | 79.57  | 78.81  | 75.82  | 96.08   | 96.06   | 91.53   | 92.16   | 85.34     |
| vicuna trins    | 70.38   | 81.58  | 73.78  | 75.78  | 73.52   | 81.67  | 75.13  | 77.02  | 39.23   | 47.29  | 42.86  | 43.90  | 85.48   | 92.17   | 79.94   | 83.62   | 69.77     |
| vic no trins    | 69.45   | 79.92  | 71.92  | 74.29  | 75.03   | 82.00  | 77.38  | 78.30  | 36.65   | 45.46  | 40.06  | 41.62  | 83.39   | 89.88   | 75.26   | 79.34   | 68.12     |
| vic no trins new| 72.98   | 82.83  | 74.76  | 77.25  | 72.53   | 79.83  | 74.71  | 75.88  | 38.16   | 47.17  | 41.25  | 43.08  | 76.69   | 91.71   | 78.41   | 82.25   | 69.34     |
| colpali best (Q+A) | ----   | ----  | ----  | ----  | ----     | ----    | ----   | ----  | ----    | ----    | ----   | ----  | ----    | ----     | ----  | ----      | 47.19  |

```
  "Magpie_pro_300k_sharegpt": {
    "file_name": "mosaic_new_for_iclr/Magpie_pro_300k_sharegpt.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
  "Magpie_pro_300k_sharegpt_3x_new_8k": {
    "file_name": "mosaic_new_for_iclr/Magpie_pro_300k_sharegpt_3x_new_8k.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
  "Magpie_pro_300k_sharegpt_2x_new_8k": {
    "file_name": "mosaic_new_for_iclr/Magpie_pro_300k_sharegpt_2x_new_8k.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
  "Vicuna_1M_sharegpt_1x_new_4k_0multi": {
    "file_name": "mosaic_new_for_iclr/Vicuna_1M_sharegpt_1x_new_4k_0multi.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
  "Vicuna_1M_sharegpt_2x_new_4k_0multi": {
    "file_name": "mosaic_new_for_iclr/Vicuna_1M_sharegpt_2x_new_4k_0multi.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
  "Vicuna_1M_sharegpt_3x_new_4k_0multi": {
    "file_name": "mosaic_new_for_iclr/Vicuna_1M_sharegpt_3x_new_4k_0multi.json",
    "formatting": "sharegpt",
    "columns": {
      "messages": "conversations"
    }
  },
```


```
### model
model_name_or_path: meta-llama/Meta-Llama-3-8B

### method
stage: sft
do_train: true
finetuning_type: full
deepspeed: examples/deepspeed/ds_z3_config.json

### dataset
dataset: Vicuna_1M_sharegpt_1x_new_4k_0multi
template: vicuna
cutoff_len: 4096
max_samples: 
overwrite_cache: true
preprocessing_num_workers: 16

### output
output_dir: /mnt/localssd/trained_models_lf/llama3_8b_Vicuna_1M_sharegpt_1x_new_4k_0multi_vic_template
logging_steps: 10
save_steps: 3000
plot_loss: true
overwrite_output_dir: true

### train
per_device_train_batch_size: 2
gradient_accumulation_steps: 4
learning_rate: 2.0e-5
num_train_epochs: 1.0
lr_scheduler_type: cosine
warmup_ratio: 0.1
bf16: true
ddp_timeout: 180000000

save_only_model: true
```


```
### model
model_name_or_path: meta-llama/Meta-Llama-3-8B

### method
stage: sft
do_train: true
finetuning_type: full
deepspeed: examples/deepspeed/ds_z3_config.json

### dataset
dataset: Magpie_pro_300k_sharegpt_3x_new_8k
template: vicuna
cutoff_len: 8192
max_samples: 
overwrite_cache: true
preprocessing_num_workers: 16

### output
output_dir: /mnt/localssd/trained_models_lf/llama3_8b_Magpie_pro_300k_sharegpt_3x_new_8k_vic_template
logging_steps: 10
save_steps: 3000
plot_loss: true
overwrite_output_dir: true

### train
per_device_train_batch_size: 1
gradient_accumulation_steps: 8
learning_rate: 2.0e-5
num_train_epochs: 1.0
lr_scheduler_type: cosine
warmup_ratio: 0.1
bf16: true
ddp_timeout: 180000000

save_only_model: true
```

```
### model
model_name_or_path: meta-llama/Meta-Llama-3-8B

### method
stage: sft
do_train: true
finetuning_type: full
deepspeed: examples/deepspeed/ds_z3_config.json

### dataset
dataset: Magpie_pro_300k_sharegpt
template: vicuna
cutoff_len: 8192
max_samples: 
overwrite_cache: true
preprocessing_num_workers: 16

### output
output_dir: /mnt/localssd/trained_models_lf/llama3_8b_Magpie_pro_300k_sharegpt_2epo_vic_template
logging_steps: 10
save_steps: 3000
plot_loss: true
overwrite_output_dir: true

### train
per_device_train_batch_size: 1
gradient_accumulation_steps: 8
learning_rate: 2.0e-5
num_train_epochs: 2.0
lr_scheduler_type: cosine
warmup_ratio: 0.1
bf16: true
ddp_timeout: 180000000

save_only_model: true
```
