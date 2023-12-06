# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

MODEL='../deepcluster_exp/linear_classif/model_best.pth.tar'
ARCH='alexnet'
EXP='../visu_exp/gradient_ascent_exp'
CONV=1

python gradient_ascent.py --model ${MODEL} --exp ${EXP} --conv ${CONV} --arch ${ARCH}
