## Neo4j Browser and GUI Tools (Experimental & Optional)

This step is a bit unstable and very experimental. The goal is to enable access to the Neo4j
GUI shell for the Neo4j server hosted on this instance. This is tricky in Katacoda
due to security restrictions and constraints on accessible ports, specifically for Bolt protocol,
the interface used to execute queries. So instead, let's run the browser locally on the host. The following command will spin up a container and Firefox should be accessible via WebRTC port
5800. To do so run `$HOME/katacoda-scenarios/neo4j/scripts/setup_firefox.sh`{{execute}}

Give it a few minutes and the link below should take you to the embedded browser. Navigate
to the url http://host01:7474 from within Firefox to access Neo4j browser and login with username "neo4j" and password "test". This may be a bit slow due to virtualization overhead.

https://[[HOST_SUBDOMAIN]]-5800-[[KATACODA_HOST]].environments.katacoda.com

## More About Katacoda

You can learn more about to write your own Katacoda tutorials by checking out some
of the sample labs.

[Displaying Tabs](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs) and [embedding iFrames](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs-iframe)


