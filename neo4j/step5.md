## Setting up Jupyter

Let's run Jupyter notebook as a service. This will enable you to run some Python scripts and interact
with Neo4j programatically.

`$HOME/katacoda-scenarios/neo4j/scripts/setup_jupyter.sh`{{execute}}

Give the script a few minutes as it install some additional dependencies for Neo4j
and the demo scripts. On the terminal, you can see the package installing just before the script completes. To check if jupyter is running execute `docker ps | grep testjupyter`{{execute}}. Before
moving onto Jupyter notebook, let's use the new service to execute hello world via CLI.

1. Access the Jupyter container's CLI via `docker exec -it testjupyter bash`{{execute}}
2. Run the test program: `python3 /home/jovyan/helloneo.py`{{execute}}. Check the output
3. Exit out of the container: `exit`{{execute}}

Jupyter is now accessible via a tab on the right labeled 'Jupyter Notebook. The following command will retrieve the access token. This is used to login. See next step. 
 
`docker exec -it testjupyter bash -c "jupyter server list"`{{execute}}
 
Copy the token from the terminal. Token is right after "?token=" and is a long hexidecimal string.




