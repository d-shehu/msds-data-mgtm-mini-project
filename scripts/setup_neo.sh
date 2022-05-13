#!/bin/bash

# This is technically not necessary since the lab pre-loads docker images
# and the script below. Making this explicit as an FYI.
docker pull neo4j

# Create directory in local environment
mkdir -p $HOME/neo4j/data
mkdir -p $HOME/neo4j/logs 
mkdir -p $HOME/neo4j/import
mkdir -p $HOME/neo4j/plugins

# APOC plugin needed for the scripts
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/4.3.0.5/apoc-4.3.0.5-all.jar
cp ./apoc-4.3.0.5-all.jar $HOME/neo4j/plugins/

# Keeping it simple. This will just run the container without any
# orchestration. Port 7687 is for Bolt (Cypher query) and 7474
# is for the interface.
docker run -d \
    --name testneo4j \
    --user root \
    -p7473:7473 \
    -p7474:7474 \
    -p7687:7687 \
    --network host \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/var/lib/neo4j/import \
    -v $HOME/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    --env NEO4J_dbms_security_procedures_unrestricted=apoc.\* \
    neo4j:latest