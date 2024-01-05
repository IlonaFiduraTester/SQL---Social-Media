SELECT users.username,photos.image_url
FROM photos
JOIN likes ON photos.photo_id = likes.photo_id
JOIN users ON users.user_id=likes.user_id; 