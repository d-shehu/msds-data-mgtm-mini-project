#!/bin/bash

# This is technically not necessary since the lab pre-loads docker images
# and the script below. Making this explicit as an FYI.
docker pull jupyter/scipy-notebook

mkdir -p $HOME/jupyter
# Jupyter user ID is 100
chown 100:100 $HOME/jupyter

docker run -d \
    --name testjupyter \
    --network host \
    -p 8888:8888 \
    -v $HOME/jupyter:/home/jovyan/work \
    jupyter/scipy-notebook

# Wait for Docker to come up
until [ "`docker inspect -f {{.State.Running}} testjupyter`"=="true" ]
do
    sleep 5
done

# Install Conda package for Neo4J so we can query Neo4J from Python
docker exec testjupyter bash -c "conda install -c conda-forge neo4j-python-driver"
