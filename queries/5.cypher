//Dado un usuario determinar si este es root-influencers

MATCH (root:Usuario {screenName: "beforeitsnews"})-[:INFECTA]->()
WHERE NOT ()-[:INFECTA]->(root) 
RETURN count(root) > 0 as esRoot

//Proporcion de root-influencers

MATCH (user:Usuario)
WITH count(distinct(user)) as total
MATCH (root:Usuario)-[:INFECTA]->()
WHERE NOT ()-[:INFECTA]->(root) 
RETURN count(distinct(root))*100/total as proporcion
