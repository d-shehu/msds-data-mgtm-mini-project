The 1st step is to prep the environment so we can run neo4j locally within Katacoda. 
The environment for this scenario comes with Ubuntu 20.04 sandboxed instance pre-loaded and Docker daemon so we can begin deploying Neo4j software easily. Please note that you are running
as root in this environment and have control.

Let's start by checking Linux version `uname -a`{{execute}} and the flavor of the distro 'lsb_release -a'{{execute}}.
Now confirm that Docker daemon is installed by running `docker ps -a`{{execute}}. Please note you can click on the link 
to copy/paste the command into the terminal. Or otherwise type in the command in the terminal on the righ hand side.

Please also see below for the output from Docker.

<pre class="file">
"showvisualise": true,
"scope": "docker run --name=scope -d --net=host --pid=host --privileged -v /var/run/docker.sock:/var/run/docker.sock:rw weaveworks/scope:1.9.1 --probe.docker=true",
"scopePort": 4040,
</pre>


