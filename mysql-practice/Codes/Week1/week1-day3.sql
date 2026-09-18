use analyst_practice;

SELECT 
    *
FROM
    customers
WHERE
    city IN ('Mumbai' , 'Delhi');


SELECT 
    *
FROM
    products
WHERE
    price BETWEEN 500 AND 10000;
    

SELECT 
    *
FROM
    customers
WHERE
    name LIKE 'S%';
    
    
SELECT 
    *
FROM
    customers
WHERE
    name LIKE '_n%';


SELECT 
    *
FROM
    customers
WHERE
    name LIKE '%a%';
   
SELECT 
    *
FROM
    customers
WHERE
    city LIKE '_____';


SELECT 
    *
FROM
    customers
WHERE
    signup_date IS NULL;
    
    
SELECT 
    *
FROM
    customers
WHERE
    signup_date IS NOT NULL;
    
    
-- *********************************************************************************************


-- Q1: Customers from Mumbai OR Delhi using IN

Select * from customers 
where city IN ('Mumbai', 'Delhi');


-- *****************************************************************************************************


-- Q2: Products with price BETWEEN 500 AND 10000

SELECT 
    *
FROM
    products
WHERE
    price BETWEEN 500 AND 10000;
    
    

-- *****************************************************************************************************


-- Q3: Customers whose name starts with 'P'

SELECT 
    *
FROM
    customers
WHERE
    name LIKE 'P%';


-- *****************************************************************************************************


--  Q4: Customers whose name contains 'a'

SELECT 
    *
FROM
    customers
WHERE
    name LIKE '%a%';


-- *****************************************************************************************************


-- Q5: Customers with missing signup_date

SELECT 
    *
FROM
    customers
WHERE
    signup_date IS NULL;



-- *****************************************************************************************************


-- Q6: Customers with signup_date present (not missing)

SELECT 
    *
FROM
    customers
WHERE
    signup_date IS NOT NULL;
    
    
-- ***********************************************************************************************************    

-- Q7: Orders with order_date BETWEEN '2024-02-01' AND '2024-03-15'

SELECT 
    *
FROM
    orders
WHERE
    order_date BETWEEN '2024-02-01' AND '2024-03-15';
    
    
    
-- *************************************************************************************************************


-- Q8: Products where category IN ('Books','Furniture') AND price < 5000


SELECT 
    *
FROM
    products
WHERE
    category IN ('Books' , 'Furniture')
        AND price < 5000;

