from neo4j import GraphDatabase

conn = GraphDatabase.driver("bolt://localhost:7687", 
                     auth=("neo4j", "test"))

def fnWrite(tx, message):
    result = tx.run("""CREATE (a:Messenger)
                        SET a.message = '{0}'
                        RETURN id(a)""".format(message))
    
    return result.single()[0]

with conn.session() as session:
    ret = session.write_transaction(fnWrite, "Hello world")
    print("Hello world to Node ", ret)

conn.close()