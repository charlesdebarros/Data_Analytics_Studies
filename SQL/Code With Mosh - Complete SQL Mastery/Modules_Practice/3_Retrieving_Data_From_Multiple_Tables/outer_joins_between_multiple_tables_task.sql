# Outer Joins between multiple tables task
USE sql_store;

SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    s.name,
    os.name
FROM orders o
JOIN customers c 
	USING(customer_id)
LEFT JOIN shippers s 
	USING (shipper_id)
JOIN order_statuses os
	ON o.status = os.order_status_id;