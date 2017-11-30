#!/bin/bash
#$ -N BNCHMRK_KMEANS
#$ -q gpu2
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda
module load cuda/8.0
module load gcc/4.4.3

echo "Script began:" `date`
echo "Node:" `hostname`
echo ""
echo "Current directory:${PWD}"
echo ""
echo "Current GPU:$(nvidia-smi)"
echo ""
echo ""
echo "running b+tree"
for trial in 1 ; do
echo "*** Trial ${trial} ***"
./run
done

echo ""
echo "=== done! ==="

