-- Day 5: Calculations + Aliasing — how analysts create new metrics

USE analyst_practice;

SELECT 
    product_name, price, (price * 0.18) AS GST
FROM
    products
ORDER BY price ASC;


SELECT 
    p.product_name, (p.price * o.quantity) AS total
FROM
    products p
        JOIN
    orders o 
    using(product_id);
    

SELECT 
    order_id, quantity, quantity * 2 AS double_qty
FROM
    orders;
    
    
SELECT 
    CONCAT(name, ' - ', city) AS customer_info
FROM
    customers;
    

-- Practice Questions 

-- Q1: Product name, price, and price with 10% discount as discounted_price (price * 0.9)

SELECT 
    product_name, price, (price * 0.9) AS discounted_price
FROM
    products;
   
   
-- Q2:  Order_id, quantity, and quantity * 100 as points

SELECT 
    order_id, quantity, (quantity * 100) AS points
FROM
    orders;


-- Q3: Customer name and city combined as full_info using CONCAT (like 'Aarav - Mumbai')

SELECT 
    CONCAT(name, ' - ', city) AS full_info
FROM
    customers;
    
    
-- Q4: Product name and price * quantity? No — use orders: order_id and quantity * 500 as estimated_value

SELECT 
    order_id, (quantity * 500) AS estimated_value
FROM
    orders;
    
    
-- Q5: Customers with name and UPPER(name) as name_upper

SELECT 
    name, UPPER(name) AS name_upper
FROM
    customers;
    
    
-- Q6:  Products with price and ROUND(price * 0.18, 2) as gst

SELECT 
    product_name, price, ROUND(price * 0.18, 2) AS gst
FROM
    products;
    
    