#!/bin/bash
cd ../
# CUDA_LAUNCH_BLOCKING=1 python train_textBPN.py --exp_name Ctw1500 --net resnet50 --max_epoch 660 --batch_size 12 --gpu 0 --input_size 640 --optim Adam --lr 0.001 --num_workers 24 --resume model/MLT2017/TextBPN_resnet50_100.pth  
python train_textBPN.py --exp_name Ctw1500 --net resnet50 --mgpu --max_epoch 660 --batch_size 2 --gpu 0,1,2,3,4,5,6,7 --input_size 640 --optim Adam --lr 0.001 --num_workers 40 #--resume model/Synthtext/TextBPN_resnet50_0.pth 
#--viz --viz_freq 80
#--start_epoch 300
