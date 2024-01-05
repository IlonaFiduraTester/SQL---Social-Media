SELECT photos.photo_id,image_url FROM photos
JOIN likes ON likes.photo_id=photos.photo_id
GROUP BY photos.photo_id, photos.image_url
HAVING COUNT(likes.user_id) > 2;