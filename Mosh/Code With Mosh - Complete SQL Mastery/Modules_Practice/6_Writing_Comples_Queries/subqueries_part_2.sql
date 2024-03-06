# Subqueries - part 2

USE sql_store;

SELECT * 
FROM products
WHERE unit_price > (
	SELECT unit_price
	FROM products 
	WHERE product_id = 3
)