DROP DATABASE IF EXISTS analyst_practice;
CREATE DATABASE analyst_practice;
USE analyst_practice;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  signup_date DATE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(30),
  price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  order_date DATE,
  status VARCHAR(20)
);

INSERT INTO customers VALUES
(1,'Aarav','Mumbai','2024-01-10'),(2,'Priya','Delhi','2024-02-15'),
(3,'Rohan','Bangalore',NULL),(4,'Sneha','Mumbai','2024-03-20'),
(5,'Ishaan','Delhi','2024-01-05');

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),(102,'Mouse','Electronics',800),
(103,'Novel','Books',450),(104,'Desk','Furniture',7000);

INSERT INTO orders VALUES
(1001,1,101,1,'2024-02-01','Delivered'),
(1002,2,103,2,'2024-02-10','Delivered'),
(1003,1,102,3,'2024-03-05','Cancelled'),
(1004,4,104,1,'2024-03-15','Delivered'),
(1005,5,103,5,'2024-04-01','Returned');