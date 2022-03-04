## Downloading and Running Neo4J Server

Now that we have bootstrapped the environment, let's proceed with downloading
the latest pre-packed Neo4j docker image and run it within the Katacoda environment.
The image will be pulled from [Docker hub](https://hub.docker.com/), which is a public 
repository of Docker images.

Let's start by running `docker pull neo4j`{{execute}} to grab the Neo4J image.

Now spin up the Docker container with Neo4J application, dependencies and database
hosted within the container's context. Please note that this will be run in the background.

`./katacoda-scenarios/neo4j/scripts/setup_neo.sh`{{execute}}

Check out the script using the IDE in the dashboard on the right panel. Please wait a few minutes for the image to come up as Katacoda can be slow. Next we will install client side tools, namely cypher-shell.

