## Neo4j Client CLI Tools

Now we've installed and are running Neo4J server and database as a background task,
let's go ahead and install some useful utilities on the "client". i.e. on the instance
itself.

1. Update Ubuntu packages. Run `sudo apt update`{{execute}} and `sudo apt -y upgrade`{{execute}}. 
2. Install some networking tools and dependencies. 
`sudo apt install apt-transport-https ca-certificates curl software-properties-common`{{execute}}
3. Add the GPG key for the Neo4J repository to unlock the repo
`curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -`{{execute}}
`sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"`{{execute}}
4. Finally install the Neo4j package with binary and service. 
`sudo apt -y install neo4j`{{execute}}

Remember, Neo4J should be running in the background. Verify by running `docker ps | grep neo4j`{{execute}}

