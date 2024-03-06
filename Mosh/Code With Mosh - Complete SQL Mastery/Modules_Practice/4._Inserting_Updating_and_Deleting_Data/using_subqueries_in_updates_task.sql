# Using subqueries task
# Use sql_store database
# orders table
# Update comments for customers with more than 3000 points with 'Gold customers'.

USE sql_store;

UPDATE orders
SET 
	comments = 'Gold customer'
WHERE customer_id IN (
	SELECT 
		customer_id
	FROM customers
	WHERE points > 3000
);

# Subquery
SELECT 
	customer_id
FROM customers
WHERE points > 3000;