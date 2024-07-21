# 3.7 Outer Joins -task

-- Use the products and the order_items tables
-- Using an OUTER joinc, create a query to return
-- 	the product_id, the procuct name, and the quantity.
-- Note that using an INNER join would result in product_id 7 not being displayed as it has never been ordered.

SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;