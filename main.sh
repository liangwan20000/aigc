#! /usr/bin/env bash

set -ex

LR=2e-4
MAX_SEQ_LEN=3072

DATESTR=`date +%Y%m%d-%H%M%S`
RUN_NAME=hotel_lora
OUTPUT_DIR=output/${RUN_NAME}-${DATESTR}
mkdir -p $OUTPUT_DIR

# --train_file ../data/train.chatglm3.jsonl \
# --validation_file ../data/dev.chatglm3.jsonl \
# --max_seq_length $MAX_SEQ_LEN \
# --preprocessing_num_workers 1 \

CUDA_VISIBLE_DEVICES=1 python main.py \
    --do_train \
    --do_eval \
    --output_dir $OUTPUT_DIR \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 2 \
    --num_train_epochs 4 \
    --evaluation_strategy steps \
    --eval_steps 300 \
    --logging_steps 300 \
    --logging_dir $OUTPUT_DIR/logs \
    --save_steps 300 \
    --learning_rate $LR \