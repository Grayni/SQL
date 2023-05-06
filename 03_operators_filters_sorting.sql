DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
USE shop;

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';







-- 1.1
SELECT * FROM users;
UPDATE users SET
	created_at = NOW(),
	updated_at = NOW();

-- --------------------------------------------------

-- 1.2
-- -- Imitation of the situation
ALTER TABLE users
	MODIFY created_at VARCHAR(20),
	MODIFY updated_at VARCHAR(20);

UPDATE users SET
	created_at = '20.10.2017 08:10',
	updated_at = '20.10.2017 08:10';

-- -- version 1.0
-- -- Format change
UPDATE users SET 
	created_at = CONCAT(
		SUBSTRING(created_at, 7, 4), '-',
		SUBSTRING(created_at, 4, 2), '-',
		SUBSTRING(created_at, 1, 2), ' ',
		SUBSTRING_INDEX(created_at, ' ', -1)
	),
	updated_at = CONCAT(
		SUBSTRING(updated_at, 7, 4), '-',
		SUBSTRING(updated_at, 4, 2), '-',
		SUBSTRING(updated_at, 1, 2), ' ',
		SUBSTRING_INDEX(updated_at, ' ', -1)
	);

ALTER TABLE users
	MODIFY created_at DATETIME,
	MODIFY updated_at DATETIME;

-- -- version 1.1
-- -- if use function (not yet studied)
DROP FUNCTION IF EXISTS conver_to_date;

DELIMITER // -- changing ; -> //
CREATE FUNCTION conver_to_date (col VARCHAR(50)) RETURNS DATETIME READS SQL DATA
-- -- READS SQL DATA -> FUNCTION ONLY READ (does not modify data inside itself)
BEGIN
    RETURN CONCAT(
		SUBSTRING(col, 7, 4), '-',
		SUBSTRING(col, 4, 2), '-',
		SUBSTRING(col, 1, 2), ' ',
		SUBSTRING_INDEX(col, ' ', -1)
	);
END //
DELIMITER ;

UPDATE users SET 
	created_at = conver_to_date(created_at),
	updated_at = conver_to_date(updated_at);

ALTER TABLE users
	MODIFY created_at DATETIME,
	MODIFY updated_at DATETIME;


-- -- version 2
UPDATE users SET 
	created_at = STR_TO_DATE(created_at, %d.%m.%Y %k:%i) -- creating a mask %k -> HOUR 0-11
	
-- --------------------------------------------------
	
-- 1.3
-- -- unique product -> work ignore 
-- -- adding stock
INSERT INTO storehouses_products
	(product_id, value)
VALUES
	(1, 10), (2, 4), (3, 2), (4, 5), (5, 0), (6, 5), (7, 3), (8, 0), (9, 5), (10, 10), (11, 8);

SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;
	
-- --------------------------------------------------
	
-- 1.4
-- -- version 1.0
SELECT name, birthday_at,
CASE
	WHEN birthday_at LIKE '%-05-%' THEN 'May'
	WHEN birthday_at LIKE '%-08-%' THEN 'August'
	ELSE NULL
END AS Month
FROM users
WHERE birthday_at LIKE '%-05-%' or birthday_at LIKE '%-08-%';

-- -- version 2.0
SELECT name, birthday_at, MONTHNAME(birthday_at) AS Month 
FROM users
WHERE MONTHNAME(birthday_at) IN ('May', 'August');

-- --------------------------------------------------

-- 1.5
-- -- version 1
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY
	CASE id
		WHEN 5 THEN 1
		WHEN 1 THEN 2
		WHEN 2 THEN 3
	END;

-- -- version 2
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY IF (id = 5, 0, 1);

-- -- version 3
SELECT * FROM catalogs
WHERE id IN (5, 1, 2)
ORDER BY IF (name='Материнские платы', 1, 0), name;

-- --------------------------------------------------

-- 2.1
-- -- version 1.0
SELECT
ROUND(SUM((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25) / COUNT(*)) AS average_age
FROM users;

-- -- version 2.0
SELECT
ROUND(SUM(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) / COUNT(*)) AS average_age
FROM users;

-- -- version 3.0
SELECT 
ROUND(SUM(DATEDIFF(NOW(), birthday_at) / 365.25) / COUNT(*)) AS average_age
FROM users;

-- --------------------------------------------------

-- 2.2
SELECT COUNT(*) AS Amount,
DAYNAME(CONCAT(YEAR(NOW()), '-', MONTH(birthday_at), '-', DAY(birthday_at))) AS week
FROM users
GROUP BY week
ORDER BY Amount;

-- --------------------------------------------------

-- 2.3
-- -- product of ages
SELECT EXP(SUM(LOG(DATEDIFF(NOW(), birthday_at) / 365.25))) AS multiplication 
FROM users;











) 