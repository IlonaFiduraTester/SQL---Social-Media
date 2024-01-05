 SELECT username,comments.comment_text FROM users
 JOIN comments ON comments.user_id=users.user_id
 JOIN photos ON comments.photo_id = photos.photo_id
 JOIN photo_tags ON photos.photo_id=photo_tags.photo_id
 JOIN tags ON photo_tags.tag_id=tags.tag_id
 WHERE tags.tag_name='Nature';