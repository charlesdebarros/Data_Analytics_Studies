# 3.11 Natural Joins

-- No joining columns declared
-- Letting the SQL engine to guess/figure out where to join the tables
-- Because it nan produce unnexpected results, it should be avoided

USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c;