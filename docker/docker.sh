#! /bin/bash
image=2dpass:latest
name=2dpass

docker run --gpus '"device=0"' -it --rm --shm-size 50G -v /mnt/data/:/data -v /home/jaemin/Projects/:/ws --name $name $image
