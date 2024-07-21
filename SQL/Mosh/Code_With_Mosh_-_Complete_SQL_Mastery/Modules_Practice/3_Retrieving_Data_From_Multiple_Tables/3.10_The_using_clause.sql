# 3.10 The USING clause

-- IF two tables are being joing on the same column, and the columns have the same name, we can use the USING clause to simplify the join

USE sql_store;

-- Without USING
SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id;

-- With USING
SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c 
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id);

# Multiple, compound (mulitple primary keys on a table, columns with USING
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id);