MATCH (root:Usuario)-[:INFECTA]->()
WHERE NOT ()-[:INFECTA]->(root) 
RETURN DISTINCT root.screenName