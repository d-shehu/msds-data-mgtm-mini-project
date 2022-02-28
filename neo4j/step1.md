The 1st step is to prep the environment so we can run neo4j locally within Katacoda. 
Scenario is building with a Ubuntu 20.04 sandboxed instance with Docker daemon so we can begin deploying Neo4j software easily. Please note that you are running as root in this environment and have control.

Start by checking Linux version `uname -a`{{execute}} and the flavor of the distro `lsb_release -a`{{execute}}.

Now confirm that Docker daemon is installed by running `docker ps -a`{{execute}}. Please note you can click on the link to copy/paste the command into the terminal. Or otherwise type in the command in the terminal on the righ hand side.

And finally, let's grab the code we need for this lab from Github. `git clone https://github.com/d-shehu/katacoda-scenarios.git`{{execute}}. 


