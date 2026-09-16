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

