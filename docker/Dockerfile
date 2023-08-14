FROM pytorch/pytorch:1.8.1-cuda11.1-cudnn8-devel

RUN mkdir /ws
WORKDIR /ws

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub

RUN apt-get update
RUN apt-get install git libsparsehash-dev libgl1-mesa-glx libglib2.0-0 -y
RUN pip install PyYAML easydict pyquaternion pytorch_lightning==1.3.8 torchmetrics==0.5 spconv==2.1.16 spconv-cu113 nuscenes-devkit
RUN pip install torch-scatter -f https://data.pyg.org/whl/torch-1.9.0+${CUDA}.html
RUN pip install --upgrade git+https://github.com/mit-han-lab/torchsparse.git@v1.4.0

RUN pip uninstall typing_extensions --yes
RUN pip uninstall fastapi --yes
RUN pip install --no-cache fastapi

RUN groupadd -g 999 user
RUN useradd -r -u 999 -g user user

USER user

