-- Calculate Average Likes per Photo
 SELECT AVG(l.like_id) AS avg_likes_per_photo
 FROM likes l;