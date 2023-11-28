import transformers

model = transformers.AutoModelForCausalLM.from_pretrained(
    'meta-llama/Llama-2-7b-hf',
    resume_download=True,
    token='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'
)
tokenizer = transformers.AutoTokenizer.from_pretrained(
    'meta-llama/Llama-2-7b-hf',
    use_fast=False,
    resume_download=True,
    token='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'
)