SELECT DISTINCT username FROM users
JOIN photos ON photos.user_id=users.user_id
JOIN photo_tags ON photos.photo_id=photo_tags.photo_id
JOIN tags ON photo_tags.tag_id=tags.tag_id
WHERE tag_name IN ('Travel', 'Nature');


