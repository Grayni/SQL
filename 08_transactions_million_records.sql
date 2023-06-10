USE shop;

-- 1

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	record_date DATETIME COMMENT 'Record creation date',
	table_name VARCHAR(255) COMMENT 'Table name',
	record_id INT UNSIGNED COMMENT 'Record id',
	record_name VARCHAR(255) COMMENT 'Record name'
) COMMENT = 'Logs -> users, catalogs, products' ENGINE=ARCHIVE;


-- trigger users
DROP TRIGGER IF EXISTS record_users_trigger;
DELIMITER //
CREATE TRIGGER record_users_trigger AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (record_date, table_name, record_id, record_name)
	VALUES (NEW.created_at, 'users', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES
	('Геннадиdй', '1990-10-05'),
	('Натальdя', '1984-11-12');


-- trigger products
DROP TRIGGER IF EXISTS record_products_trigger;
DELIMITER //
CREATE TRIGGER record_products_trigger AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (record_date, table_name, record_id, record_name)
	VALUES (NEW.created_at, 'products', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO products
	(name, description, price, catalog_id)
VALUES
	('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
	('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1);


-- trigger catalogs
DROP TRIGGER IF EXISTS record_catalogs_trigger;
DELIMITER //
CREATE TRIGGER record_catalogs_trigger AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (record_date, table_name, record_id, record_name)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
DELIMITER ;

INSERT INTO catalogs VALUES
	(NULL, 'Проц2'),
	(NULL, 'Матер2');



-- 2
-- WARNING!
-- DELETE FROM users;

-- interval birthday [1930 - 2011]
SET @start_date = '1930-01-01 00:00:00';
SET @end_date = DATE_SUB(NOW(), INTERVAL 12 YEAR);
SET @interval = DATEDIFF(@end_date, @start_date);

SET @name_prefix = 'user_';

-- use cte recursion 1000*1000
INSERT INTO users (name, birthday_at)
WITH RECURSIVE cte(n) AS (
	SELECT 1 UNION ALL
	SELECT 1+n FROM cte WHERE n < 1000
)
SELECT
	CONCAT(@name_prefix, (1000 - t1.n) + ((t2.n - 1) * 1000)), -- name: user_0 ... user_999999
	DATE_ADD(@start_date, INTERVAL FLOOR(RAND() * (@interval + 1)) DAY) -- random birthday: 1930 - 2011 
FROM cte t1, cte t2; -- for i=0; i < 1000; i++:     // t2
					   -- for j=0; j < 1000; j++):  // t1
							-- new row
					     	

-- first and last records
SELECT *
FROM users
WHERE id = (SELECT MIN(id) FROM users) -- first record
   OR id = (SELECT MAX(id) FROM users) -- last record

-- count of records
SELECT count(*) FROM users;








