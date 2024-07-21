# 3.8 Outer Joins between multiple tables - task

-- Write a query to return
-- the order_id, the order_date, the customer's first_name, the shipper, and the status
-- Make sure to include any NULL values
     
USE sql_store;

SELECT 
	o.order_id,
    o.order_date,
    c.first_name AS customer,
    s.name AS shipper,
    os.name AS status
FROM orders o
JOIN customers c  # Here we can use an INNER join as every order has a customer
	USING(customer_id)
LEFT JOIN shippers s 
	USING (shipper_id)
JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY o.order_id;