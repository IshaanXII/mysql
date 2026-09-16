-- Query 1: Explore structure

describe customers;
describe orders;
describe products;


-- Query 2: Select specific columns (never use SELECT * in final answer)

SELECT 
    customer_id
FROM
    customers;
SELECT 
    product_id
FROM
    orders;
SELECT 
    price
FROM
    products;

-- Query 3: Renaming with AS 

SELECT 
    product_name AS Item
FROM
    products;
    
-- Query 4: Unique Values

SELECT DISTINCT
    product_name
FROM
    products;