# Outer Joins between multiple tables

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id
FROM customers c 
LEFT JOIN orders o 
	USING(customer_id)
LEFT JOIN shippers sh
	USING(shipper_id)
ORDER BY c.customer_id