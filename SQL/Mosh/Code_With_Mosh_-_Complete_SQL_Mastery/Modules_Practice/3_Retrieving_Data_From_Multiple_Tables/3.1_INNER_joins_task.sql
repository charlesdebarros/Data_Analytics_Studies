# 3.1 Inner Joins - Task

-- Join the order_items with the products table
	-- For each order, return
		-- the order_id,
        -- the product_id,
		-- the product name
        -- the quantity,
        -- the unit price

USE sql_store;

SELECT 
	oi.order_id,
    oi.product_id,
    p.name AS 'product name',
    oi.quantity,
    oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id;