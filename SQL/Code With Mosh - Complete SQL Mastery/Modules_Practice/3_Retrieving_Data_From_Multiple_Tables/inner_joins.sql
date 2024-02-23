# Inner Joins

USE sql_store;

SELECT 
	oi.order_id,
    oi.product_id,
    oi.quantity,
    p.name AS 'Product Name',
    oi.unit_price
FROM order_items oi
INNER JOIN products p
	ON oi.product_id = p.product_id;