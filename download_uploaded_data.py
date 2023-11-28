import json
from datasets import load_dataset
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data_path", type=str, default='Minglii/a')
    parser.add_argument("--save_path", type=str, default='data/Reflection_Alp_QA.json')
    args = parser.parse_args()
    return args

def main():

    args = parse_args()
    print('Download:',args.data_path)
    dataset = load_dataset(args.data_path)

    data_raw = []
    data_train = dataset['train']
    for i,data_i in enumerate(data_train):
        data_raw.append(data_i['data'])

    print('New data len \n',len(data_raw))
    with open(args.save_path, "w") as fw:
        json.dump(data_raw, fw, indent=4)

    pass

if __name__ == '__main__':
    main()