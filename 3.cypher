
match(u:Usuario)

match( (n2:Noticia)-[r]->(u) )

with u, count(r) as inDegree

match (n1:Noticia) 

with u, inDegree, count(n1) as news

where inDegree >= 0.2*news

return u.userId as Node, inDegree


