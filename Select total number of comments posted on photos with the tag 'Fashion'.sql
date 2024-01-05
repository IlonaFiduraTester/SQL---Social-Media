SELECT COUNT(comment_id) AS 'number of comments' FROM comments
JOIN photo_tags ON comments.photo_id=photo_tags.photo_id
JOIN tags ON photo_tags.tag_id=tags.tag_id
WHERE tags.tag_name='Fashion';