USE vk;


-- 1 -----------------------------------
/*IGNORE - lock of rewrite*/

-- users (insert)
INSERT IGNORE INTO users (id, firstname, lastname, email, password_hash, phone) VALUES
('1', 'Dean', 'Satterfield', 'orin69@example.net', 'kjhlkjglkglgk123kljgkj123', '9160120629'),
('2', 'Jane', 'Smith', 'janesmith@example.com', '202cb962ac59075b964b07152d234b70', '6505554321'),
('3', 'Michael', 'Johnson', 'michaeljohnson@example.com', '6cb75f652a9b52798eb6cf2201057c73', '5105556789'),
('4', 'Sarah', 'Lee', 'sarahlee@example.com', 'e10adc3949ba59abbe56e057f20f883e', '4085558765'),
('5', 'David', 'Nguyen', 'davidnguyen@example.com', 'fcea920f7412b5da7be0cf42b8c93759', '4155552468'),
('6', 'Emily', 'Kim', 'emilykim@example.com', '1f0e3dad99908345f7439f8ffabdffc4', '4085553698'),
('7', 'Robert', 'Park', 'robertpark@example.com', 'c4ca4238a0b923820dcc509a6f75849b', '6505559876'),
('8', 'Jennifer', 'Chen', 'jenniferchen@example.com', '8f14e45fceea167a5a36dedd4bea2543', '5105551357'),
('9', 'Daniel', 'Tran', 'danieltran@example.com', '0ade7c2cf97f75d009975f4d720d1fa6', '4085557321'),
('10', 'Amanda', 'Garcia', 'amandagarcia@example.com', 'd3d9446802a44259755d38e6d163e820', '4155558765'),
('11', 'William', 'Brown', 'williambrown@example.com', '6512bd43d9caa6e02c990b0a82652dca', '6505553698'),
('12', 'Elizabeth', 'Davis', 'elizabethdavis@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', '5105559876'),
('13', 'Tom', 'Wilson', 'andrewwilson@example.com', 'c51ce410c124a10e0db5e4b97fc2af39', '4085551234'),
('14', 'Jessica', 'Lee', 'jessicalee@example.com', 'c3fcd3d76192e4007dfb496cca67e13b', '4155559876'),
('15', 'Tom', 'Truong', 'kevintruong@example.com', '52cababecb7736608aefd3eb3e52b09c', '5105552468');

-- users for example
INSERT IGNORE INTO users
SET
	firstname = 'Tom',
	lastname = 'Cruze',
	email = 'exmaple@example.com',
	phone = '2322421343'

-- communities
INSERT IGNORE INTO communities (name, admin_user_id) VALUES
('Life', '14'),
('Science', '5'),
('Tech', '8'),
('Sports', '2'),
('Music', '10'),
('Travel', '1'),
('Fitness', '11'),
('Food', '7'),
('Art', '6'),
('Fashion', '15');

INSERT IGNORE INTO friend_requests (initiator_user_id, target_user_id, status) VALUES
(1, 2, 'requested'),
(2, 3, 'requested'),
(3, 4, 'approved'),
(5, 6, 'requested'),
(7, 8, 'approved'),
(10, 11, 'requested');

-- media_types
INSERT IGNORE  INTO media_types (id, name) VALUES
(1, 'jpg'),
(2, 'mp4'),
(3, 'mp3');

-- media
INSERT IGNORE INTO media (media_type_id, user_id, body, filename, size, metadata) VALUES
(1, 5, 'sunset', 'sunset.jpg', 2560, '{"location": "California"}'),
(2, 3, 'cat', 'cat.mp4', 10240, '{"duration": "30 seconds"}'),
(1, 2, 'mountain', 'mountain.jpg', 4096, '{"location": "Switzerland"}'),
(3, 9, 'song', 'song.mp3', 20480, '{"duration": "3 minutes"}'),
(2, 7, 'dog', 'dog.mp4', 5120, '{"duration": "1 minute"}'),
(1, 1, 'beach', 'beach.jpg', 2048, '{"location": "Florida"}'),
(2, 5, 'skateboarder', 'skateboard.mp4', 8192, '{"duration": "2 minutes"}'),
(1, 2, 'forest', 'forest.jpg', 3072, '{"location": "Canada"}'),
(3, 9, 'piano', 'piano.mp3', 16384, '{"duration": "5 minutes"}'),
(2, 7, 'bird', 'bird.mp4', 4096, '{"duration": "30 seconds"}'),
(1, 1, 'cityscape', 'city.jpg', 1024, '{"location": "New York"}'),
(2, 5, 'soccer game', 'soccer.mp4', 6144, '{"duration": "1 hour"}'),
(1, 3, 'flower', 'flower.jpg', 512, '{"location": "France"}'),
(3, 2, 'guitar', 'guitar.mp3', 12288, '{"duration": "2 minutes"}'),
(2, 1, 'waterfall', 'waterfall.mp4', 7168, '{"duration": "5 minutes"}');

-- likes
INSERT INTO likes (user_id, media_id) VALUES
(5, 16),
(3, 17),
(2, 18),
(9, 19),
(7, 20),
(1, 21),
(5, 22),
(3, 23),
(2, 24),
(9, 25),
(7, 26),
(1, 27),
(5, 28),
(3, 29),
(2, 30);

-- messages
INSERT IGNORE INTO messages (from_user_id, to_user_id, body) VALUES
(1, 2, 'message 1'),
(3, 4, 'message 2'),
(5, 6, 'message 3'),
(7, 8, 'message 4'),
(9, 10, 'message 5'),
(11, 12, 'message 6'),
(13, 14, 'message 7'),
(15, 1, 'message 8'),
(2, 3, 'message 9'),
(4, 5, 'message 10');

-- photo_albums
INSERT IGNORE INTO photo_albums (name, user_id) VALUES 
('Family Vacation', 3),
('Hiking Trip', 1),
('My Birthday', 2),
('Beach Day', 4),
('Ski Trip', 5),
('City Tour', 6),
('Road Trip', 7),
('Nature Walk', 8),
('Art Exhibition', 9),
('Fishing Day', 10),
('Graduation Ceremony', 11),
('Sports Game', 12),
('Cooking Class', 13),
('Concert Night', 14),
('Movie Marathon', 15);

-- photos
INSERT IGNORE INTO photos (album_id, media_id) VALUES 
(1, 16),
(2, 17),
(3, 18),
(4, 19),
(5, 20),
(6, 21),
(7, 22),
(8, 23),
(9, 24),
(10, 25),
(11, 26),
(12, 27),
(13, 28),
(14, 29),
(15, 30);

-- profiles
INSERT IGNORE INTO `profiles` (user_id, gender, birthday, photo_id, hometown) VALUES 
(1, 'M', '1990-01-01', 1, 'New York'),
(2, 'F', '1995-03-15', 2, 'Los Angeles'),
(3, 'M', '1987-12-10', 3, 'Chicago'),
(4, 'F', '1992-06-20', 4, 'Houston'),
(5, 'M', '1985-09-05', 5, 'Philadelphia'),
(6, 'F', '1989-11-30', 6, 'Phoenix'),
(7, 'M', '1997-02-22', 7, 'San Antonio'),
(8, 'F', '1994-07-18', 8, 'San Diego'),
(9, 'M', '1988-04-12', 9, 'Dallas'),
(10, 'F', '1993-10-25', 10, 'San Jose'),
(11, 'M', '1991-08-03', 11, 'Austin'),
(12, 'F', '1986-12-01', 12, 'Jacksonville'),
(13, 'M', '1984-05-15', 13, 'Fort Worth'),
(14, 'F', '1996-09-08', 14, 'Columbus'),
(15, 'M', '1999-01-25', 15, 'San Francisco');

-- users_communities
INSERT IGNORE INTO users_communities (user_id, community_id) VALUES
(1, 2),
(2, 4),
(3, 1),
(4, 5),
(5, 3),
(6, 10),
(7, 8),
(8, 6),
(9, 9),
(10, 7),
(11, 2),
(12, 1),
(13, 5),
(14, 8),
(15, 4);

-- for example
INSERT IGNORE INTO users(firstname, lastname, email)
SELECT first_name, last_name, email FROM sakila.staff 


-- 2 -----------------------------------
SELECT DISTINCT firstname FROM users
ORDER BY firstname;

-- 3 -----------------------------------
UPDATE users 
SET is_deleted = 1 
ORDER BY id 
LIMIT 5;

-- 4 -----------------------------------
DELETE FROM messages
WHERE created_at > NOW();

-- 5 -----------------------------------
/*
 Тема: "Колонизация марса".
 Некоторые из таблиц:
 Экипаж, Техника, Постройки, Подразделения, Работы, Питание, Ресурсы и т.д.
 */



