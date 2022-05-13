## Neo4j Client CLI Tools

With Neo4J database and server running as a background "service",let's go ahead and install some useful utilities on the host. i.e. the Katacoda instance. Typically these would be installed on
your local machine and the CLI tools will be used to access local or remote Neo4j server as with
MySql or Postgres.

1. Update Ubuntu packages. Run `sudo apt update`{{execute}} 
2. Install Ubuntu networking tools and dependencies. 
`sudo apt install apt-transport-https ca-certificates curl software-properties-common`{{execute}}
3. Add the GPG key to approve the repo
`curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -`{{execute}}
4. Add the Neo4j package repo to your environment
`sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"`{{execute}}
5. Finally install the Neo4j CLI tools on the host (not container) 
`sudo apt -y install neo4j`{{execute}}

Now cypher-shell and other CLI tools have been installed. In the next step, let's test these are functional and you're able to access the Neo4j "server". 

