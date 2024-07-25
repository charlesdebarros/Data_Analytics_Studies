# 6.2 Subqueries - part 2

-- Find products that are more expensive than lettuce (id = 3)
-- SQL will run the subqueries first then the main query
-- We can also use subqueries within the SELECT or the FROM clauses. Examples later. 

USE sql_store;

SELECT * 
FROM products
WHERE unit_price > (
	SELECT unit_price
	FROM products 
	WHERE product_id = 3
)