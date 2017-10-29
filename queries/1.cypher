match (u:Usuario)

with count(u) as userNodes

match (n:Noticia)-[r]-()

with userNodes, n, count(r) as degree 

where degree > userNodes*0.25

return n.titulo AS node, degree

order by degree;


