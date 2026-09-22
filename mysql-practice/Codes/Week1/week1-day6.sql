-- Revision Sprint

-- 1. Top 2 cheapest Books/Furniture products
-- 2. Mumbai customers with LIKE 'S%'
-- 3. Delivered orders between Feb-Mar sorted newest first
-- 4. Products with gst > 1000 using ROUND(price*0.18,2)
-- 5. Customers with NULL signup


-- 1

SELECT 
    product_name, category, price
FROM
    products
WHERE
    category IN ('Books' , 'Furniture')
ORDER BY price ASC
LIMIT 2;


-- 2
SELECT 
    name AS Mumbai_customers_with_name_starts_with_S
FROM
    customers
WHERE
    name LIKE 'S%' AND city = 'Mumbai';

-- 3

SELECT 
    p.product_name, o.order_date
FROM
    products p
        JOIN
    orders o USING (product_id)
WHERE
    o.order_date BETWEEN '2024-02-01' AND '2024-03-31' AND status = 'Delivered'
ORDER BY o.order_date DESC; 

-- 4

SELECT 
    product_name, price, ROUND(price * 0.18, 2) AS gst
FROM
    products
WHERE
   ROUND(price * 0.18, 2) > 1000; 

-- 5 

SELECT 
    name AS customers_with_null_signup
FROM
    customers
WHERE
    signup_date IS NULL;

