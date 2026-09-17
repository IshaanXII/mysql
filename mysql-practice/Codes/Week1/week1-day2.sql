use analyst_practice;

SELECT 
    *
FROM
    products
WHERE
    category = 'Electronics';
    
SELECT 
    *
FROM
    products
WHERE
    price > 1000;
    
    
SELECT 
    *
FROM
    products
WHERE
    price <> 800;
    
    
    
SELECT 
    *
FROM
    customers
WHERE
    city = 'Mumbai'
        AND signup_date > '2024-02-01';
        
        
SELECT 
    *
FROM
    orders
WHERE
    status = 'Delivered' OR 'Returned';

SELECT 
    *
FROM
    orders
WHERE
    NOT status = 'cancelled';
    
    
SELECT 
    *
FROM
    customers
WHERE
    city = 'Delhi'
        AND (name = 'Priya' OR name = 'Aarav');



-- Practice Questions

-- Q1:  All products with price > 1000

SELECT 
    *
FROM
    products
WHERE
    price > 1000;
    
    
-- *****************************************************************************************************


-- Q2:  All orders where quantity >= 2

SELECT 
    *
FROM
    orders
WHERE
    quantity >= 2;
    

-- *****************************************************************************************************    
 
 
-- Q3: Customers from Mumbai

SELECT 
    *
FROM
    customers
WHERE
    city = 'Mumbai';


-- *****************************************************************************************************
    
    
-- Q4: Customers from Mumbai AND signed up after 2024-02-01

SELECT 
    *
FROM
    customers
WHERE
    city = 'Mumbai'
        AND signup_date > '2024-02-01';


-- *****************************************************************************************************


-- Q5: Orders that are Delivered OR Returned

SELECT 
    *
FROM
    orders
WHERE
    status = 'Delivered' OR status = 'Returned';


-- Another way to querying Q5 using 'IN' operator:

SELECT 
    *
FROM
    orders
WHERE
    status IN ('Delivered', 'Returned');
    

 -- *****************************************************************************************************
   
    
-- Q6: Orders that are NOT Delivered

SELECT 
    *
FROM
    orders
WHERE
    NOT status = 'delivered';


-- *****************************************************************************************************


-- Q7: Products where category is Books OR Furniture

SELECT 
    *
FROM
    products
WHERE
    category IN ('Books' , 'Furniture');
    
    
-- *****************************************************************************************************


-- Q8: Products where price < 1000 AND category = 'Electronics'


SELECT 
    *
FROM
    products
WHERE
    price < 1000
        AND category = 'Electronics'; 
