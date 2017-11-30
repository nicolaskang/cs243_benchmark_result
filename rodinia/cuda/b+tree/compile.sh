module load cuda/8.0
module load gcc/4.4.3
make clean
make KERNEL_DIM="-DRD_WG_SIZE_O=256"
