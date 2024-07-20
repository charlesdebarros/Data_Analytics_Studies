-- 2.9 The NULL operator - task

-- Get the orders that have not been shipped yet. 

USE sql_store;

SELECT * FROM orders
WHERE shipped_date IS NULL;