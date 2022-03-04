## Setting up Jupyter

Now we setup the Jupyter notebook and run the hello world Neo4J notebook. 

`./katacoda-scenarios/neo4j/scripts/setup_jupyter.sh`{{execute}}

Give it a few minutes and click on the link below to see Jupyter's login screen.

https://[[HOST_SUBDOMAIN]]-8888-[[KATACODA_HOST]].environments.katacoda.com

To access go ahead and run the following to get the access token that you can
copy paste into the browser.

`docker exec -it testjupyter bash -c "jupyter notebook list"`{{execute}}

