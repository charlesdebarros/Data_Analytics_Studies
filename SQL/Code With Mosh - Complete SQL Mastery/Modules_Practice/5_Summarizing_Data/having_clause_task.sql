#  The HAVING clause task
-- Use sql_store database
-- Get the customers
-- 	Located in Virginia
--     Have spent more than $100
USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
    state,
    SUM(oi.unit_price * oi.quantity) as total_sales
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING total_sales >= 100