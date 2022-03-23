## Bootstrapping the Environment

Start by prepping the scenario environment so you can run Neo4j locally within Katacoda. 
This scenario was built on a Ubuntu 20.04 sandboxed instance using Docker. Docker is a runtime used to package Neo4j server and application dependency and demonstrate deployment. Please note that you are running as root in this environment and have full control over the virtualized host and the  file system.

Verify the Linux version `uname -a`{{execute}} and the flavor of the distro `lsb_release -a`{{execute}}.

Now confirm that Docker daemon is installed `docker ps -a`{{execute}}. Please note you can click on the link to copy/paste these commands into the terminal. Or otherwise type in the command in the terminal on the righ hand side.

And finally, let's grab the code we need for this lab from Github. `git clone https://github.com/d-shehu/katacoda-scenarios.git`{{execute}}. This will be cloned to the local directory.


