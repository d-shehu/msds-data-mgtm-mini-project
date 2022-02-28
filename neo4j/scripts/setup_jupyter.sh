#!/bin/bash

docker pull jupyter/scipy-notebook:latest

mkdir -p $HOME/jupyter
# Jupyter user ID is 100
chown 100:100

docker run -it \
--name testjupyter \
-p 8888:8888 \
-v $HOME/jupyter:/home/jovyan/work \
jupyter/scipy-notebook:latest
