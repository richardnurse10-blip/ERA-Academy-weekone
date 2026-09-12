CREATE database candy_store

USE candy_store;

CREATE table manufacturer (
	id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_name VARCHAR(50)
);

INSERT INTO manufacturer (manufacturer_name) VALUES
('Redcon'),
('Monster'),
('CharlieFour'),
('Alani');

UPDATE manufacturer SET manufacturer_name = 'BravoTwo' WHERE id = 3; 

CREATE table candy (
	id INT AUTO_INCREMENT PRIMARY KEY,
    candy_name VARCHAR(50),
    candy_price INT
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(id)
);

INSERT INTO candy (candy_name, candy_price) VALUES
('Sour Gummy Bear', 3.00),
('Zero', 2.00),
('America', 4.00),
('Cosmic Rainbow', 2.50);

INSERT INTO candy (candy_name, candy_price) VALUES
('Chocolate Peanut Butter', 1.50);

DELETE FROM candy WHERE id = 5;

SELECT * FROM candy;

SELECT * FROM manufacturer;

SELECT candy_name FROM candy;

SELECT candy_name, candy_price FROM candy WHERE id = 2;