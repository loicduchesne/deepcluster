# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

DATA="datasets01/tiny-imagenet-200"
MODELROOT="deepcluster_models"
MODEL="${MODELROOT}/alexnet/checkpoint.pth.tar"
EXP="deepcluster_exp/linear_classif"

PYTHON="C:/Users/loic4/miniconda3/envs/deepcluster/python.exe"

mkdir -p ${EXP}

${PYTHON} eval_linear.py --model ${MODEL} --data ${DATA} --conv 3 --lr 0.01 \
  --wd -7 --tencrops --verbose --exp ${EXP} --workers 4 --epochs 10
