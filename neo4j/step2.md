Now that we have confirmed Docker is installed, let's proceed with downloading
the latest pre-packed Neo4j docker image and run it within the Katacoda environment.
The image will be pulled from [Docker hub](https://hub.docker.com/), which is a public 
repository of Docker images.

1. Let's start by running `docker pull neo4j`{{execute}} to grab the Neo4J image.

Now let's run spin up the Docker container with Neo4J application, dependencies and database
hosted within the container's context. Please note that this is being run in the background.

2. Run `docker run -p7687:7687 -p7474:7474 -p7473:7473 neo4j &`{{execute}} to grab the Neo4J image.

Next step will be to install client side tools, namely cypher-shell.

