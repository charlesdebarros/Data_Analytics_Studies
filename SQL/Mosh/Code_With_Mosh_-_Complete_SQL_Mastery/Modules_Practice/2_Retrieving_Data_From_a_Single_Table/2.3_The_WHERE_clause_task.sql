# 2.3_The_WHERE_clause_task

-- Get orders placed this year

USE sql_store;

SELECT * FROM orders
WHERE order_date >= '2019-01-01';  -- Assuming 2019 is the current year. 