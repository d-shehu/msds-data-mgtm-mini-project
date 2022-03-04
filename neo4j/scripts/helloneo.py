from neo4j import GraphDatabase

conn = GraphDatabase.driver("bolt://localhost:7687", 
                     auth=("neo4j", "test"))

def fnWrite(tx, message):
    result = tx.run("CREATE (a:Greeting) "
                        "SET a.message = $message"
                        "RETURN a.message + ', from node ' + id(a)", message=message)
    
    return result.single()[0]

with conn.session() as session:
    ret = session.write_transaction(fnWrite, "Hello world")
    print(ret)

conn.close()