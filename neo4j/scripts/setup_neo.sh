#!/bin/bash

# Create directory in local environment
mkdir -p $HOME/neo4j/data
mkdir -p $HOME/neo4j/logs 
mkdir -p $HOME/neo4j/import
mkdir -p $HOME/neo4j/plugins


# Keeping it simple. This will just run the container without any
# orchestration.
docker run \
    --name testneo4j \
    -p7473:7473 \
    -p7474:7474 \
    -p7687:7687 \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/var/lib/neo4j/import \
    -v $HOME/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest &