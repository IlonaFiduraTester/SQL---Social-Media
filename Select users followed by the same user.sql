SELECT users.username, photos.image_url
FROM follows 
JOIN users  ON follows.followee_id = users.user_id
JOIN photos ON users.user_id = photos.user_id
WHERE follower_id = 1;
