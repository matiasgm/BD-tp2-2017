USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "file:///asd.csv" AS row
CREATE (:Noticia {url:row.canonical_url,datePublished:row.date_published,from:row.from_user_screen_name,idNoticia:row.id,mention:row.is_mention,title:row.title,to:row.to_user_screen_name,tweetId:row.tweet_id,tweet_type:row.tweet_type});