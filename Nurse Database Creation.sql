CREATE database candy_store

USE candy_store;

CREATE table manufacturer (
	manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_name VARCHAR(50)
);

CREATE table candy (
	candy_id INT AUTO_INCREMENT PRIMARY KEY,
    candy_name VARCHAR(50),
    candy_price INT,
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(id)
);