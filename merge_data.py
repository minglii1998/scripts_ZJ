import json
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data_1", type=str, default='data/Reflection_Alp_QA.json')
    parser.add_argument("--data_2", type=str, default='data/sharegpt_split_eng.json')
    parser.add_argument("--save_path", type=str, default='data/ShareGPT_Reflection_Alp_QA.json')
    args = parser.parse_args()
    return args

def main():
    args = parse_args()
    with open(args.data_1, "r") as f:
        json_data_0 = json.load(f)
    with open(args.data_2, "r") as f:
        json_data_1 = json.load(f)

    new_data = json_data_0 + json_data_1

    print('New data len \n',len(new_data))
    with open(args.save_path, "w") as fw:
        json.dump(new_data, fw, indent=4)

if __name__ == '__main__':
    main()