USE shop;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

INSERT INTO orders (user_id)
VALUES (1), (3), (5), (3), (5), (3), (5);


-- 1
SELECT DISTINCT u.id, u.name, u.birthday_at FROM users u JOIN orders o
ON u.id = o.user_id;


-- 2
SELECT p.id, p.name AS product, c.name AS category FROM products p JOIN catalogs c
ON p.catalog_id = c.id;


-- 3
CREATE DATABASE IF NOT EXISTS airport;
USE airport;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(255),
	`to` VARCHAR(255)
);

INSERT INTO flights VALUES
	(NULL, 'Moscow', 'Omsk'),
	(NULL, 'Novgorod', 'kazan'),
	(NULL, 'Irkutsk', 'Moscow'),
	(NULL, 'Omsk', 'Irkutsk'),
	(NULL, 'Moscow', 'Kazan');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	`label` VARCHAR(255),
	`name` VARCHAR(255)
);

INSERT INTO cities VALUES
	(NULL, 'Moscow', 'Москва'),
	(NULL, 'Irkutsk', 'Иркутск'),
	(NULL, 'Novgorod', 'Новгород'),
	(NULL, 'Kazan', 'Казань'),
	(NULL, 'Omsk', 'Омск');


SELECT f.name AS `from`, t.name AS `to` FROM flights fl
JOIN cities f ON fl.from = f.label -- create rus names from
JOIN cities t ON fl.to = t.label -- create rus names to
ORDER BY fl.id; -- order flights













	
