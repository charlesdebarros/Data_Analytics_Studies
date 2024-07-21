# 3.5 Compound Join Conditions

-- Composite primary keys - more than one column as primary keys
-- Whenever we need a combination of value to uniquely identify a row, i.e., in the presence of repead valus
	-- such repeated client_id, product_id, or order_id

USE sql_store;

SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;