SELECT username, count(like_id) FROM users
JOIN likes ON users.user_id=likes.user_id
GROUP BY like_id;
