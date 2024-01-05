SELECT u.username
FROM users u
LEFT JOIN photos p ON u.user_id = p.user_id
WHERE p.photo_id IS NULL;
