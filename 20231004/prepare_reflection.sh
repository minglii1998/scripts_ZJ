python download_uploaded_data.py --data_path Minglii/w --save_path data/Reflection_Wiz_All_QA.json
python download_uploaded_data.py --data_path Minglii/v --save_path data/sharegpt_split_eng.json
python download_uploaded_data.py --data_path Minglii/v_4096 --save_path data/sharegpt_split_eng_4096.json
python download_uploaded_data.py --data_path Minglii/W_QthenA_4096 --save_path data/WizrdLM_ALL_whole_Q_then_A_sharegpt.json

python merge_data.py --data_1 data/Reflection_Wiz_All_QA.json --save_path data/ShareGPT_Reflection_Wiz_All_QA.json
python merge_data.py --data_1 data/WizrdLM_ALL_whole_Q_then_A_sharegpt.json --data_2 data/sharegpt_split_eng_4096.json --save_path data/ShareGPT_WizrdLM_ALL_whole_Q_then_A_4096.json
