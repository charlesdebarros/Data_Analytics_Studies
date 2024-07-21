# 3.13 UNIONS

-- Combining rows from multiple queries
-- The queries can be from the same or from different tables
-- It will return all the queries as one set of results
-- Note: the number of columns each query returns must be the same
-- The result table column names will be based in the column names from the first query

USE sql_store;

SELECT 
	order_id,
    order_date,
    'Active' AS status
FROM orders o
WHERE o.order_date >= '2019-01-01'

UNION

SELECT 
	order_id,
    order_date,
    'Archived'
FROM orders
WHERE order_date < '2019-01-01';

-- The following would return an error due to the different number of columns queries in each query
-- SELECT first_name, last_name  # two columns
-- FROM customers
-- UNION
-- SELECT name  # one column
-- FROM shippers
