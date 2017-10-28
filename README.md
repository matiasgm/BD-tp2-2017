# BD-tp2-2017
## Conversión de datos .json a .csv
jq -r '.edges[] | [.canonical_url, .date_published, .domain, .from_user_id, .from_user_screen_name, .id,.is_mention, .site_type,.title, .to_user_id, .to_user_screen_name, .tweet_created_at, .tweet_id, .tweet_type, .url_id | tostring]  | @csv ' noticias.json