SELECT username,COUNT(photo_id) FROM users
JOIN photos ON users.user_id=photos.user_id
GROUP BY users.username;
