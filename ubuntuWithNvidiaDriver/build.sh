#!/bin/sh

THIS_DIR=$(dirname "$0")
cd "$THIS_DIR"

IMAGE_NAME=ubuntu_with_nvidia_driver
NVIDIA_DRIVER=NVIDIA-Linux-x86_64-355.11.run

#chmod +x "${NVIDIA_DRIVER}"
#cp "${NVIDIA_DRIVER}" NVIDIA-DRIVER.run

docker build --build-arg NVIDIA_DRIVER="$NVIDIA_DRIVER" -t "$IMAGE_NAME" .
