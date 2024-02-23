-- DATE Functions task

-- Modify the following query to reliably return only orders from 2019.
-- In the current query, any orders after '2019-01-01' would be returned
-- which is not what is required.

USE sql_store;

SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';

-- This query will not return any results as the current year (2024) is greater than the 2019 dates in the database.
SELECT 
	*
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())