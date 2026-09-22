-- SQL TEST

 -- 1. List name, city of all Delhi customers
 -- 2. Products with price BETWEEN 400 AND 8000, sorted low to high
 -- 3. Orders with status IN ('Cancelled','Returned')
 -- 4. Customers where signup_date IS NOT NULL AND city LIKE '%bai'
 -- 5. Top 1 cheapest product (name only)
 -- 6. Orders with quantity > 1 ORDER BY quantity DESC LIMIT 2
 -- 7. Products with price*0.9 as final_price where final_price < 1000
 -- 8. Customers with CONCAT(name,' - ',city) as info where city='Delhi'
 -- 9. Distinct status from orders
-- 10. Orders where order_date BETWEEN '2024-03-01' AND '2024-04-30' AND status='Delivered'


-- 1
SELECT 
    name, city
FROM
    customers
WHERE
    city = 'Delhi';
    
-- 2

SELECT 
    product_name, price
FROM
    products
WHERE
    price BETWEEN 400 AND 8000
ORDER BY price;

-- 3 

SELECT 
    order_id, status
FROM
    orders
WHERE
    status IN ('Cancelled' , 'Returned');
    
-- 4

SELECT 
    name, signup_date, city
FROM
    customers
WHERE
    signup_date IS NOT NULL
        AND city LIKE '%bai';
        
-- 5

SELECT 
    product_name AS cheapest_product
FROM
    products
ORDER BY price
LIMIT 1;

-- 6

SELECT 
    order_id, quantity
FROM
    orders
WHERE
    quantity > 1
ORDER BY quantity DESC
LIMIT 2;


-- 7 

SELECT 
    product_name, (price * 0.9) AS final_price
FROM
    products
WHERE
    (price * 0.9) < 1000;
    
    
-- 8 

SELECT 
    CONCAT(name, ' - ', city) AS info
FROM
    customers
WHERE
    city = 'Delhi';
    

-- 9 

SELECT DISTINCT
    status
FROM
    orders;

-- 10 

SELECT 
    order_id, status, order_date
FROM
    orders
WHERE
    order_date BETWEEN '2024-03-01' AND '2024-04-30'
        AND status = 'Delivered';