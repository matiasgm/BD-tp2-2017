//1.Grafo bipartito

//Cargo noticias

LOAD CSV FROM "file:///asd.csv" AS line
MERGE (n:Noticia{url:line[0],idNoticia:line[5],titulo:line[8]});

//Cargo users que crearon noticias
LOAD CSV FROM "file:///asd.csv" AS line
MERGE (n:Usuario{screenName:line[4],userId:line[3]});

//Cargo users que recibieron noticias (no se deberían crear repetidos)
LOAD CSV FROM "file:///asd.csv" AS line
MERGE (n:Usuario{screenName:line[10],userId:line[9]});

//Relaciono cada noticia con su creador

LOAD CSV FROM "file:///asd.csv" AS line
MATCH (n:Noticia {titulo: line[8]})
MATCH (u:Usuario {userId:line[3]})
MERGE (n)-[:IMPACTA]->(u);

//Relaciono noticia con los receptores de las mismas

LOAD CSV FROM "file:///asd.csv" AS line
MATCH (n:Noticia {titulo: line[8]})
MATCH (u:Usuario {userId:line[9]})
MERGE (n)-[:IMPACTA]->(u);


//2. Agrego la relacion de infeccíon

LOAD CSV FROM "file:///asd.csv" AS line
MATCH (u1:Usuario {userId:line[3]})
MATCH (u2:Usuario {userId:line[9]})
MERGE (u1)-[:INFECTA]->(u2);
