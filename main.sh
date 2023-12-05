# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DIR="datasets01/tiny-imagenet-200/train"
ARCH="alexnet"
LR=0.05
WD=-5
K=1000
WORKERS=12
EPOCHS=10
EXP="test/exp"
PYTHON="C:/Users/loic4/miniconda3/envs/deepcluster/python.exe"

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py ${DIR} --exp ${EXP} --arch ${ARCH} \
  --lr ${LR} --wd ${WD} --k ${K} --sobel --verbose --workers ${WORKERS} --epochs ${EPOCHS}
