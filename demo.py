from huggingface_hub import snapshot_download
import os

current_dir = os.getcwd()
print(current_dir)
# 下载模型
snapshot_download(repo_id="THUDM/chatglm3-6b", local_dir="/root/autodl-tmp/aigc/chatglm3-6b", local_dir_use_symlinks=False)

# 下载数据集
# dataset = load_dataset("YeungNLP/firefly-train-1.1M")
# dataset.save_to_disk("./dataset/Salesforce/dialogstudio") # 保存到该目录下
# dataset = load_from_disk("./dataset/Salesforce/dialogstudio") # 加载保存的数据集
# print(len(dataset['train']))
# print(dataset['train'])
# print(dataset['train'][1]['kind'])
# with open('./dataset/data.json', 'w', encoding='utf-8') as fp:

# 按照模型要的结构组合数据
