Now that we have confirmed Docker is installed, let's proceed with downloading
the latest pre-packed Neo4j docker image and run it within the Katacoda environment.
The image will be pulled from [Docker hub](https://hub.docker.com/), which is a public 
repository of Docker images.

Let's start by running `docker pull neo4j`{{execute}} to grab the Neo4J image.

Now let's run spin up the Docker container with Neo4J application, dependencies and database
hosted within the container's context. Please note that this will be run in the background.

`./katacoda-scenarios/scripts/setup_neo4j.sh`{{execute}}

You can look at the script by using the IDE in the dashboard. Please wait a few minutes for the image to come up. And we're going to modify neo4j to work with HTTPS port.

`docker exec -t neo4j bash -c "sed -i 's/#dbms.connector.bolt.address=0.0.0.0:7687/#dbms.connector.bolt.address=0.0.0.0:7687/g' /var/lib/neo4j/conf/neo4j.conf"`{{execute}}

Next step will be to install client side tools, namely cypher-shell.

