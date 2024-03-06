# The USING clause
SELECT 
	o.order_date,
    o.order_id,
    c.first_name
FROM orders o
JOIN customers c 
	USING(customer_id);

# Multiple columns with USING
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id)