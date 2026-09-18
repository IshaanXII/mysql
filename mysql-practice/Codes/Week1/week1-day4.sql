-- Day 4:  ORDER BY + LIMIT + DISTINCT — how analysts get Top N reports. 
use analyst_practice;

-- Sort by using only one column:

SELECT 
    *
FROM
    products
ORDER BY price ASC;

-- ************************************

SELECT 
    *
FROM
    products
ORDER BY price DESC;


-- Sort by using two columns:

SELECT 
    *
FROM
    customers
ORDER BY city ASC, signup_date DESC;

-- Limit

SELECT 
    *
FROM
    products
ORDER BY price ASC
LIMIT 2;


-- Questions regarding 2nd best: OFFSET


-- Example: What is the 2nd most expensive product in this database
SELECT 
    *
FROM
    products
ORDER BY price DESC
LIMIT 1 OFFSET 1 ;

-- Using DISTINCT with ORDER BY:

SELECT DISTINCT
    city
FROM
    customers
ORDER BY city ASC; 


-- *************************************************

-- Q1: All products sorted by price high to low

SELECT 
    *
FROM
    products
ORDER BY price DESC;


-- Q2: All customers sorted by signup_date newest first (NULLs will come first - note it)

SELECT 
    *
FROM
    customers
ORDER BY signup_date IS NULL DESC , signup_date DESC;


-- Q3:  Top 2 costliest products

SELECT 
    *
FROM
    products
ORDER BY price DESC
LIMIT 2;


-- Q4:  2nd costliest product

SELECT 
    *
FROM
    products
ORDER BY price DESC
LIMIT 1 OFFSET 1;

-- Q5: Latest 3 orders

SELECT 
    *
FROM
    orders
ORDER BY order_date DESC
LIMIT 3;


-- Q6: Unique cities sorted A-Z

SELECT DISTINCT
    city
FROM
    customers
ORDER BY city;


-- Q7: Orders sorted by quantity DESC, then order_date ASC

SELECT 
    *
FROM
    orders
ORDER BY quantity DESC , order_date ASC;