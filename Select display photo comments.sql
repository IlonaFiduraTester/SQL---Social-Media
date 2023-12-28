-- Display Photo Comments
 SELECT comment_text, image_URL, username
 FROM comments
 JOIN photos ON photos.photo_id=comments.photo_id
 JOIN users ON users.user_id=comments.user_id;
