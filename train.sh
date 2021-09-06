#!/bin/bash

DATA_DIR="./data/album_covers_512"
DATE=$(date "+_%Y_%m_%d_%H_%M_%S")

lightweight_gan \
  --data "$DATA_DIR" \
  --name "main" \
  --image-size 512 \
  --batch-size 8 \
  --gradient-accumulate-every 4 \
  --num-train-steps 20000 \
  --disc-output-size 5 \
  --amp
#  --show-progress \
