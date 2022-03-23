## Setting up Jupyter

Let's setup Jupyter so you can run some Neo4J scripts. 

`$HOME/katacoda-scenarios/neo4j/scripts/setup_jupyter.sh`{{execute}}

Give the script a few minutes to load Jupyter and install some dependencies for Neo4j
and the demo scripts. You should see the package installing just before the script wraps up.
To check if jupyter is running execute `docker ps | grep testjupyter`{{execute}}

Jupyter will be accessible via a tab on the right labeled 'Jupyter Notebook. The following command will retrieve the access token. This will be used to authenticate and access Jupyter notebook. 
 
`docker exec -it testjupyter bash -c "jupyter server list"`{{execute}}
 
Copy the token from output. On the terminal, it's preceeded with "?token=" where the token is a long hexidecimal number. Next slide walks you through Jupyter. 


