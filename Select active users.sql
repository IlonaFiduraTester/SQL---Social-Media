-- Identify Active Users
SELECT username, count(photo_id) AS photo_count
FROM users
JOIN photos ON photos.user_id=users.user_id
GROUP BY username
ORDER BY photo_count
LIMIT 5;