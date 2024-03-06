-- The EXISTS operator Task
-- Find the products that have never been ordered

-- Think as if we are querying the Amazon database. Using the IN operator would
-- return millions of results (a large result set) and it would take too much time, power and resources to run.

USE sql_store;

SELECT *
FROM products p
WHERE NOT EXISTS (
	SELECT DISTINCT product_id
    FROM order_items
    WHERE product_id = p.product_id
)