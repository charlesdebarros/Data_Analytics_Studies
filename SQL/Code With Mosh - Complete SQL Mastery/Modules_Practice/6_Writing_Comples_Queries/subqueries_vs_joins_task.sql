# Subqueries vs Join - Task

-- Find customers who have ordered lettuce (id = 3)
-- Select customer_id, first_name, and last_name

USE sql_store;

# Using a Subquery
SELECT 
	customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
	SELECT o.customer_id
    FROM order_items oi
    JOIN orders o USING (order_id)
	WHERE product_id = 3
)
ORDER BY customer_id;

# Using Joins
# In this case, using a Join seems to make the code more intuitive in what it is doing.
SELECT 
	DISTINCT c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN orders o USING(customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3
ORDER BY c.customer_id;
