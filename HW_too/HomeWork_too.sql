DROP DATABASE IF EXISTS sales;
CREATE DATABASE IF NOT EXISTS sales;

USE sales;
DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
name_product VARCHAR(45) NOT NULL,
manufacture VARCHAR(45) NOT NULL,
price DECIMAL(5,2) NULL,
quantity INT NULL);

INSERT INTO sales (id, name_product, manufacture, price, quantity)
VALUES
(1, "Alenka", "Krasniy october", 160.80, 100),
(2, "Vdochnovenie", "Krasniy october", 120.90, 240),
(3, "Osobiy", "Krupskoy", 100.00, 310),
(4, "Belochka", "Slavyanka", 189.00, 89),
(5, "Vernisag", "Krupskoy", 190.50, 169),
(6, "Choodo", "Slavyanka", 110.00, 200),
(7, "Slava", "Krasniy october", 117.80, 90);


SELECT
name_product "Название Шоколада",
quantity "Количество",
IF(quantity < 100, "Мало",
	IF(quantity >= 100 AND quantity < 300, "Достаточно",
		IF(quantity >= 300, "Много", "Неопределенно"))) AS "Остаток на складе"
FROM sales;


SELECT name_product AS "Наименование шоколада", manufacture "Фабрика",
	CASE 
		WHEN manufacture = "Krasniy october" THEN "Mocква"
        WHEN manufacture = "Krupskoy" THEN "Санкт-Петербург"
        WHEN manufacture = "Slavyanka" THEN "Старый-Оскол"
        ELSE "Ошибка"
	END  AS "Город"
FROM sales;

/* Значение 0 отличается от NULL тем, что , что "0"-это значение рабное нулю,
 а "NULL"- НЕТ НИКАКОГО ЗНАЧЕНИЯ, ПУСТАЯ ЯЧЕЙКА.*/