SELECT users.user_id, users.username, comments.comment_text
FROM users
JOIN comments ON comments.user_id = users.user_id
ORDER BY users.user_id;
