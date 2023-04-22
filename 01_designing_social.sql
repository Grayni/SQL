DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NO NULL AUTO_INCREMENT UNIQUE
	firstname VARCHAR(100),
	lastname VARCHAR(100) COMMENT 'Surname',
	email VARCHAR(120) UNIQUE,
	password_hash VARCHAR(100),
	phone BIGINT UNSIGNED,
	is_deleted BIT DEFAULT b'0',
	INDEX users_lastname_firstname_idx(lastname, firstname)
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
	gender CHAR(1),
	birthday DATE,
	photo_id BIGINT UNSIGNED,
	created_at DATETIME DEFAULT NOW()
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	created_at DATETIME DEFAULT NOW(),
	FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS `friend_request`;
CREATE TABLE `friend_request` (
	-- id SERIAL PRIMARY KEY,
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined', 'unfriended'),
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT NOW(),
	PRIMARY KEY (initiator_user_id, target_user_id),
	FOREIGN KEY (initiator_user_id) REFERENCES users(id),
	FOREIGN KEY (target_user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS `communities`;
CREATE TABLE communities (
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	INDEX communities_name_idx(name)
);

DROP TABLE IF EXISTS `users_communities`;
CREATE TABLE `users_communities` (
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (community_id) REFERENCES communities(id)
);

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	body TEXT,
	media_type_id BIGINT UNSIGNED,
	-- filename BLOB,
	metadata JSON,
	filename VARCHAR(255), 
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE

);

DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT UNSIGNED NOT NULL,
	`media_id` BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_photo_id
FOREIGN KEY (photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- musician
DROP TABLE IF EXISTS `author_music`;
CREATE TABLE `author_music` (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

-- music album (1 -- M)
DROP TABLE IF EXISTS `album_music`;
CREATE TABLE `album_music` (
	id SERIAL PRIMARY KEY,
	author_music_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR(255),
	`year` INT,
	FOREIGN KEY (author_music_id) REFERENCES author_music(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- detail album (1 - 1)
DROP TABLE IF EXISTS `detail_album_music`;
CREATE TABLE `detail_album_music` (
	album_music_id SERIAL PRIMARY KEY,
	cover JSON,
	co_authors VARCHAR(255) DEFAULT NULL,
	honors VARCHAR(255) DEFAULT NULL,
	produced INT UNSIGNED NOT NULL
);

ALTER TABLE `detail_album_music` ADD CONSTRAINT fk_album_music_id
FOREIGN KEY (album_music_id) REFERENCES album_music(id) ON UPDATE CASCADE ON DELETE CASCADE;

-- music  (1 -- M)
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
	id SERIAL PRIMARY KEY,
	album_music_id BIGINT UNSIGNED NOT NULL,
	author_music_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR(255) NOT NULL,
	duration BIGINT UNSIGNED NOT NULL,
	`year` INT,
	`rating` INT DEFAULT 0,
	genre VARCHAR(255),
	INDEX music_name_idx(name),
	FOREIGN KEY (album_music_id) REFERENCES album_music(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (author_music_id) REFERENCES author_music(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- user with list music <=> fans of certain music (M -- M)
DROP TABLE IF EXISTS `users_music`;
CREATE TABLE `users_music` (
	user_id BIGINT UNSIGNED NOT NULL,
	music_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, music_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (music_id) REFERENCES music(id)
);



