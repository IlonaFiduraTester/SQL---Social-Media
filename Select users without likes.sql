SELECT username FROM users
LEFT JOIN likes ON likes.user_id=users.user_id
WHERE like_id IS NULL;