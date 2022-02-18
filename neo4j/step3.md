Now we've installed and are running Neo4J server and database as a background task,
let's go ahead and install some useful utilities on the "client". i.e. on the instance
itself. We could do this via Docker but trying to keep things simple.

1. Update Ubuntu packages. Run `sudo apt update`{{execute}} and `sudo apt -y upgrade`{{execute}}. 
2. Now let's install some networking tools and dependencies. 
`sudo apt install apt-transport-https ca-certificates curl software-properties-common`{{execute}}
3. Add the GPG key for the Neo4J repository so we can install Neo4J tools
`curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -`{{execute}}
`sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"`{{execute}}
4. Now install the Neo4j package with binary and service. This gives us some useful tools like cypher-shell. 
We won't actually run Neo4j on the instance but within Docker to simulate "server".
`sudo apt -y install neo4j`{{execute}}

