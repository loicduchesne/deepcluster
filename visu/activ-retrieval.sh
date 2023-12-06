# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

MODEL="../deepcluster_models/alexnet/checkpoint.pth.tar"
EXP="../visu_exp/activ-retrieval_exp"
CONV=5
DATA='../datasets01/tiny-imagenet-200/val'

python activ-retrieval.py --model ${MODEL} --exp ${EXP} --conv ${CONV} --data ${DATA}
