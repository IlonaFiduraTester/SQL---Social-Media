-- Count User Followers
SELECT u.username, COUNT(f.follower_id) AS follower_count
FROM users u
LEFT JOIN follows f ON u.user_id = f.followee_id
GROUP BY u.username;