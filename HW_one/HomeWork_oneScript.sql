CREATE DATABASE phones;	
USE phones;

CREATE TABLE phones
 (  id INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name_phone VARCHAR(45) NOT NULL,
  Manufacture VARCHAR(45) NOT NULL,
  price DECIMAL(8,2) NULL,
  quantity INT NULL)
  
SELECT * FROM phones;
INSERT INTO phones (id, name_phone, Manufacture, price, quantity)
VALUES
(1, "IPhone SE", "Apple", 79000.00, 3),
(2, "IPhone X 64 Gb", "Apple", 60000.90, 2),
(3, "IPhone 86 Gb", "Apple", 90000.90, 1),
(4, "Galaxy A54", "Sumsung", 55000.90, 5),
(5, "Galaxy Z Flip", "Sumsung", 46700.90, 3),
(6, "LG Zero", "LG", 6900.00, 2),
(7, "LG 20", "LG", 11700.80, 3);


SELECT  name_phone, Manufacture, price FROM phones
WHERE quantity >2;

SELECT * FROM phones
WHERE Manufacture = "Sumsung";
