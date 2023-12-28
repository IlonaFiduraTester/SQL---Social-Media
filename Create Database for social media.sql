create database social_media;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Photos table
CREATE TABLE photos (
    photo_id INT PRIMARY KEY AUTO_INCREMENT,
    image_url VARCHAR(255) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Follows table
CREATE TABLE follows (
    follow_id INT PRIMARY KEY AUTO_INCREMENT,
    follower_id INT,
    followee_id INT,
    FOREIGN KEY (follower_id) REFERENCES users(user_id),
    FOREIGN KEY (followee_id) REFERENCES users(user_id)
);

-- Comments table
CREATE TABLE comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    comment_text TEXT NOT NULL,
    user_id INT,
    photo_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (photo_id) REFERENCES photos(photo_id)
);

-- Likes table
CREATE TABLE likes (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    photo_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (photo_id) REFERENCES photos(photo_id)
);

-- Tags table
CREATE TABLE tags (
    tag_id INT PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(255) NOT NULL
);

-- Photo_tags table (junction table for many-to-many relationship)
CREATE TABLE photo_tags (
    photo_id INT,
    tag_id INT,
    PRIMARY KEY (photo_id, tag_id),
    FOREIGN KEY (photo_id) REFERENCES photos(photo_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id)
);

-- Users
INSERT INTO users (username) VALUES
('john_doe'),
('jane_smith'),
('alex_jones'),
('sara_miller'),
('mike_baker'),
('emily_clark'),
('david_white'),
('lisa_davis'),
('chris_morgan'),
('olivia_hall'),
('robert_king'),
('natalie_evans'),
('adam_jackson'),
('lily_brown'),
('ryan_taylor'),
('amy_carter'),
('brandon_hill'),
('melissa_ross'),
('nick_wilson'),
('katie_cooper'),
('peter_morris'),
('emma_richardson'),
('matthew_cox'),
('ava_garcia'),
('justin_fisher'),
('hannah_jones'),
('benjamin_smith'),
('mia_martinez'),
('william_wood');

-- Photos
INSERT INTO photos (image_url, user_id) VALUES
('https://example.com/photo1.jpg', 1),
('https://example.com/photo2.jpg', 2),
('https://example.com/photo3.jpg', 3),
('https://example.com/photo4.jpg', 4),
('https://example.com/photo5.jpg', 5),
('https://example.com/photo6.jpg', 6),
('https://example.com/photo7.jpg', 7),
('https://example.com/photo8.jpg', 8),
('https://example.com/photo9.jpg', 9),
('https://example.com/photo10.jpg', 10);


-- Follows
INSERT INTO follows (follower_id, followee_id) VALUES
(1, 2),
(2, 1),
(1, 3),
(3, 2),
(2, 4),
(4, 1),
(3, 5),
(5, 4),
(4, 6),
(6, 3);
... (insert 20 more follows);

-- Comments
INSERT INTO comments (comment_text, user_id, photo_id) VALUES
('Amazing shot!', 1, 1),
('Beautiful scenery!', 2, 1),
('Love your style!', 3, 2),
('Great capture!', 4, 2),
('Stunning view!', 5, 3),
('Awesome composition!', 6, 3),
('Fantastic moment!', 7, 4),
('Incredible photo!', 8, 4),
('Lovely colors!', 9, 5),
('Perfect shot!', 10, 5);


-- Likes
INSERT INTO likes (user_id, photo_id) VALUES
(1, 2),
(2, 1),
(3, 3),
(4, 2),
(5, 4),
(6, 3),
(7, 5),
(8, 4),
(9, 6),
(10, 5);


-- Tags
INSERT INTO tags (tag_name) VALUES
('Nature'),
('Travel'),
('Food'),
('Fashion'),
('Art'),
('Fitness'),
('Technology'),
('Pets'),
('Music'),
('Books'),
('Photography'),
('Adventure'),
('Fitness'),
('Gaming'),
('Movies'),
('Health'),
('Science'),
('Cars'),
('Home'),
('Crafts'),
('Design');

-- Photo_tags
INSERT INTO photo_tags (photo_id, tag_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);