CREATE SCHEMA techstore;

CREATE DATABASE techstore;

USE techstore;

CREATE TABLE product (
	product_id INT,
    product_name VARCHAR(100),
    product_cost DECIMAL(10, 2)
);

DESCRIBE product;

ALTER TABLE product
ADD PRIMARY KEY (product_id);

CREATE TABLE customer (
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

SELECT * FROM customer;
SELECT * FROM `order`;
SELECT * FROM product;


CREATE TABLE `order` (
	order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO product VALUES
(12, 'water bottle', 8.00),
(13, 'phone case', 15.00),
(14, 'headphones', 50.00);

INSERT INTO customer (customer_id, customer_name) VALUES
(1, 'Duane'),
(2, 'Yue'),
(3, 'Karen');

INSERT INTO `order` (order_id, customer_id, product_id) VALUES
(1,1,12),
(2,1,13),
(3,2,14);

SELECT `order`.order_id, `order`.customer_id, product.product_name, product.product_cost
FROM `order`
JOIN product
ON `order`.product_id = product.product_id;
