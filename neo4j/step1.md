## Bootstrapping the Environment

Start by prepping the environment so we can run Neo4j locally within Katacoda. 
This scenario was built on a Ubuntu 20.04 sandboxed instance using Docker to package server and application dependency and facilitate deployment. Please note that you are running as root in this environment and have full control over the virtualized host and the local file system.

Verify the Linux version `uname -a`{{execute}} and the flavor of the distro `lsb_release -a`{{execute}}.

Now confirm that Docker daemon is installed `docker ps -a`{{execute}}. Please note you can click on the link to copy/paste the command into the terminal. Or otherwise type in the command in the terminal on the righ hand side.

And finally, let's grab the code we need for this lab from Github. `git clone https://github.com/d-shehu/katacoda-scenarios.git`{{execute}}. This will be cloned to the local directory.


