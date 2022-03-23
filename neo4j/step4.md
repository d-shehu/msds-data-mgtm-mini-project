## Using Cypher-Shell

Neo4J should already be running as a server, see previous steps. Neo4j's cypher-shell is similar
to Mysql CLI or psql for Postgres. To access, run `cypher-shell -u neo4j -p test -d neo4j`{{execute}}. 

Please note that a 'neo4j' account has been pre-configured with 'test' as the password. There is also a single 'neo4j' database. The freely available Community Edition of Neo4j is limited to a single database per environment. In a production setting, using Aura or enterprise edition these limitations. Also credentials would be obfuscated and stored as environment variables or via a
secrets vault. 

If successeful the terminal should be replaced with a cypher shell. Now run this query to create a couple of nodes and associate the nodes via relationship.

`CREATE (a:User {name: 'Jammie'})-[r:Trains {tool:'Katacoda'}]->(b:User {name:'Tom'});`{{execute}}

For the 2nd queries let's fetch all nodes. `MATCH(n) RETURN (n);`{{execute}}. Since we will be using this database later let's cleanup by flusing all nodes and relationship. Do this with `MATCH(n) DETACH DELETE (n);`{{execute}}. 

And finally exit cypher-shell, `:exit`{{execute}}. Next step is to spin up a Jupyter notebook with some sample Python code using Neo4j database.