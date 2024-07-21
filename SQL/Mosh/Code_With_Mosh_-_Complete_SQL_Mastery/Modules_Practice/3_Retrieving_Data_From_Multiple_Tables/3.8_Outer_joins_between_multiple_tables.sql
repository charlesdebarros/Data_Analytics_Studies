# 3.8 Outer Joins between multiple tables

-- Using OUTER joins with multiple tables
-- Avoiding mixing LEFT and RIGHT joins when OUTER joining multiple tables. 
-- As best practice, avoid RIGHT joins and use LEFT joins

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    sh.name AS shipper
FROM customers c 
LEFT JOIN orders o 
	USING(customer_id)
LEFT JOIN shippers sh
	USING(shipper_id)
ORDER BY c.customer_id;