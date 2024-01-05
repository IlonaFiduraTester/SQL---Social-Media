SELECT DISTINCT username FROM users
LEFT JOIN comments ON comments.user_id= users.user_id
WHERE comment_id IS NULL;
