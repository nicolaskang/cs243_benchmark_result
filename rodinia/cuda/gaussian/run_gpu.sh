#!/bin/bash
#$ -N BNCHMRK_GAUSSIAN
#$ -q gpu
#$ -l gpu=1
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda
module load cuda/8.0
module load gcc/4.4.3

echo "Script began:" `date`
echo "Node:" `hostname`
echo ""
echo "Current directory:${PWD}"
echo ""
echo "BEFORE GPU:$(nvidia-smi)"
echo ""
echo ""
echo "running b+tree"
#for trial in 1 ; do
#echo "*** Trial ${trial} ***"
./run
echo "IN THE MIDDLE GPU:$(nvidia-smi)"
echo ""
./run
#done

echo "current GPU:$(nvidia-smi)"
echo ""

echo ""
echo "=== done! ==="

