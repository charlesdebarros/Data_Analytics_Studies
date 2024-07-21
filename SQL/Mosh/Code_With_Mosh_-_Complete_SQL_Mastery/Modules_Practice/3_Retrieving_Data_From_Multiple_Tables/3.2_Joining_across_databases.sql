# 3.2 Joining across databases

-- For example, joining the 'orders' table from the sql_store db to the 'products' table from the sql_inventory db
-- Only prefix the table coming from a diffent db from the current db being used

USE sql_store;

SELECT * 
FROM order_items oi
JOIN sql_inventory.products p  # prefixing the table with the name of the db where it comes from
	ON oi.product_id = p.product_id;  