## Neo4j Browser and GUI Tools (Optional)

This step is advanced usage and optional. Now that Neo4J server, client tooling are installed
let's bring up a web browser with Neo4J browser and GUI. This part is a bit tricky in Katacoda
due to security restrictions and reverse proxy. So instead, let's run a containerized/browser on the host. The following command will spin up a container and Firefox will be accessible via WebRTC port
5800. To do so run `./katacoda-scenarios/neo4j/scripts/setup_firefox.sh`{{execute}}

Give it a few minutes and the link below should take you to the embedded browser.
Login with username neo4j and password test as with the CLI. Take a look at the tutorial.

https://[[HOST_SUBDOMAIN]]-5800-[[KATACODA_HOST]].environments.katacoda.com

## More About Katacoda

You can learn more about to write your own Katacoda tutorials by checking out some
of the sample labs.

[Displaying Tabs](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs) and [embedding iFrames](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs-iframe)


