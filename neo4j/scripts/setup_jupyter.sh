#!/bin/bash

# This is technically not necessary since the lab pre-loads docker images
# and the script below. Making this explicit as an FYI.
docker pull jupyter/scipy-notebook

mkdir -p $HOME/jupyter
mkdir -p $HOME/jupyter/raw_data

# Copy Python script and Jupyter notebook
cp $HOME/katacoda-scenarios/neo4j/scripts/helloneo.py $HOME/jupyter
cp $HOME/katacoda-scenarios/neo4j/scripts/Neo4j_MiniProject.ipynb $HOME/jupyter

# Jupyter user's ID is 1000 so let's make it so on the "host"
chown -R 1000:100 $HOME/jupyter

# Run the container
docker run -d \
    --name testjupyter \
    --network host \
    -p 8888:8888 \
    -v $HOME/jupyter:/home/jovyan/work \
    jupyter/scipy-notebook

# Wait for it to come up
until [ "`docker inspect -f {{.State.Running}} testjupyter`"=="true" ]
do
    echo "Waiting for Jupyter to start up ..."
    sleep 5
done

# Install Conda package for Neo4J so we can query Neo4J from Python
docker exec testjupyter bash -c "conda install -c conda-forge neo4j-python-driver"
