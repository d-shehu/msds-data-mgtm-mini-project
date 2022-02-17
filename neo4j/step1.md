The 1st step is to prep the environment so we can run neo4j locally within Katacoda. 
The Katacoda environment comes with Ubuntu 20.04 pre-loaded and Docker so we can 
begin deploying Neo4j.

Let's start by running `docker ps -a`{{execute}} to confirm Docker is configured. This is done by adding `execute` to the markdown code block.

<pre>`echo "docker ps -a"`{{execute}}</pre>

Please also see below for the output from Docker.

<pre class="file">
"showvisualise": true,
"scope": "docker run --name=scope -d --net=host --pid=host --privileged -v /var/run/docker.sock:/var/run/docker.sock:rw weaveworks/scope:1.9.1 --probe.docker=true",
"scopePort": 4040,
</pre>


More can be found at the scenario [on Markdown extensions](https://katacoda.com/scenario-examples/scenarios/markdown-extensions).