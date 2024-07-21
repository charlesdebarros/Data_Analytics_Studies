# 3.1 Inner Joins

-- The INNER join is optional, the default MySQL join is an INNER JOIN
-- When SELECTing all (*), the first set of columns will come from the FROM clause, and the second set from the JOINing table.
-- When there are matching column names, in the example below, the customer_id is on both table, we need to qualify where the column is coming from
	-- orders.customer_id OR o.customer_id if we are using aliases. 

USE sql_store;

SELECT 
	o.order_id,
    o.customer_id,
    c.first_name,
    c.last_name
FROM orders o
INNER JOIN customers c
	ON o.customer_id = c.customer_id;
