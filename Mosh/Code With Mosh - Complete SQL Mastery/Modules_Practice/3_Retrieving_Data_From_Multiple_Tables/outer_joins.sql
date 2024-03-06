# Outer Joins

-- SELECT 
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- JOIN orders o
-- 	USING(customer_id)
-- ORDER BY c.customer_id

SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c 
-- LEFT JOIN, all the records on the left table (customers) are returned, whether the condition is true or not. 
-- RIGHT JOIN, all the records on the right table (orders) are returned, whether the condition is true or not. 
LEFT JOIN orders o 
	USING(customer_id)
ORDER BY c.customer_id;