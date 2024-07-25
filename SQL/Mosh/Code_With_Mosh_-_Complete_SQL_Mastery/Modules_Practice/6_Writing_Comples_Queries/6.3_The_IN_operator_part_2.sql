# 6.3 The IN Operator - part 2

# Find the products that have never been ordered

USE sql_store;

SELECT * 
FROM products
WHERE product_id NOT IN (
	# Here the subquery is returning a list of values
	SELECT DISTINCT product_id
	FROM order_items
);