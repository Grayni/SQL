-- 1

-- immitation database shop
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;

DROP TABLE IF EXISTS shop.users;
CREATE TABLE shop.users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO shop.users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

-- immitation database sample
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;

-- copy structure users (shop -> sample)
DROP TABLE IF EXISTS sample.users;
CREATE TABLE sample.users LIKE shop.users;

-- transaction id=1 1) copy in sample.users 2) delete in shop.users
START TRANSACTION; 
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;


-- 2
USE shop;

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello()
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE current_time_val TIME;
    SET current_time_val = CURTIME();

    IF current_time_val >= TIME('06:00:00') AND current_time_val < TIME('12:00:00') THEN
        RETURN 'Доброе утро';
    ELSEIF current_time_val >= TIME('12:00:00') AND current_time_val < TIME('18:00:00') THEN
        RETURN 'Добрый день';
    ELSEIF current_time_val >= TIME('18:00:00') AND current_time_val < TIME('24:00:00') THEN
        RETURN 'Добрый вечер';
    ELSE
        RETURN 'Доброй ночи';
    END IF;
END //

DELIMITER ;

SELECT hello();










