## Downloading and Running Neo4J Server

Now that we bootstrapped the environment, let's proceed with downloading
the latest pre-packed Neo4j docker image and run it within the Katacoda environment.
The image will be pulled from [Docker hub](https://hub.docker.com/), which is a public 
repository of Docker images.

Run `docker pull neo4j`{{execute}} to grab the Neo4J image. Please note that some packages
are pre-fetched when this scenario spins up. 

Now spin up the Docker container with Neo4J application, dependencies and database
hosted within the container's context. Please note that this will be run in the background.

`$HOME/katacoda-scenarios/neo4j/scripts/setup_neo.sh`{{execute}}

Check out the script using the IDE in the dashboard on the right panel. Please give it a few minutes as Katacoda can be slow at times. To verify, run `docker ps -a`{{execute}} and check the status.

Next step will install the client CLI tools, namely cypher-shell.

