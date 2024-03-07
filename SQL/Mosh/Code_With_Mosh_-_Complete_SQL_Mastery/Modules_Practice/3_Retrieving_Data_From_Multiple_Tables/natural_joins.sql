# Natural Joins
# No joining columns declared
# Letting the SQL engine to figure out where to join the tables
# Can produce unnexpected results

USE sql_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c;