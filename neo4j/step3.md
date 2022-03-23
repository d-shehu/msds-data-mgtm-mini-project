## Neo4j Client CLI Tools

Now we've installed and are running Neo4J server and database as a background task,
let's go ahead and install some useful utilities on the "client". i.e. on the instance
itself.

1. Update Ubuntu packages. Run `sudo apt update`{{execute}} and `sudo apt -y upgrade`{{execute}}. 
2. Install Ubuntu networking tools and dependencies. 
`sudo apt install apt-transport-https ca-certificates curl software-properties-common`{{execute}}
3. Add the GPG key for the Neo4J repository to unlock the repo
`curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -`{{execute}}
4. Add the Neo4j package repo to your environment
`sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"`{{execute}}
5. Finally install the Neo4j locally 
`sudo apt -y install neo4j`{{execute}}

In the next step, let's test that server is running and CLI tools are functional. 

