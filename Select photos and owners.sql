-- List Photos and Their Owners
SELECT image_URL, username FROM photos
JOIN users ON photos.user_id=users.user_id;