## Using Cypher-Shell

Neo4J should already be running in the background. Verify by running `docker ps | grep neo4j`{{execute}}. You should see a line in console that starts as follows:

<pre>309f23ff2037   neo4j:latest   "tini -g -- /startup…" </pre>

You can access Neo4J via the Cypher shell. `cypher-shell -u neo4j -t test -d neo4j`{{execute}}. Note
'test' is the pre-configured password for the 'neo4j' user and 'neo4j' database. In a production environment the credentials would be obfuscated and stored as environment variables or via a
secrets vault. If successeful the terminal should be replaced with a cypher shell.

Now let's run a couple of simple queries. First, will insert a couple of nodes and a relationships. 
There are some great tutorials online on Cypher and a more detailed application.

1. `CREATE (a:User {name:'Jammie'});`{{execute}} 
2. `CREATE (b:User {name:'Tom'});`{{execute}}
3. `CREATE (a:User {name: 'Jammie'})-[r:Trains {tool:'Katacoda'}]->(b:User {name:'Tom'});`{{execute}}

For the 2nd queries let's grab all nodes, there's only the one. `MATCH(n) RETURN (n);`{{execute}}. 

Since we will be using this database let's go ahead and cleanup by flushing the database. Run
`MATCH(n) DETACH DELETE (n);`{{execute}}. 

And finally exit cypher-shell by r

Don't forget to hit return after each command! 