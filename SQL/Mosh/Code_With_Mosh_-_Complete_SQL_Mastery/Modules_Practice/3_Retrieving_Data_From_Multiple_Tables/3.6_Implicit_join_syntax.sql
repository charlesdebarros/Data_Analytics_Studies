# 3.6 Implicit Join Syntax

-- It is better to use the EXPLICIT join syntax!
-- An Implicit Join, without a WHERE clause, will generate a CROSS join which would not return the desired data
-- Note there is not ON clause to explicitly specify where to join. We let MySQL decide where to join the tables
-- Note the how the FROM clause is written
-- The ON clause content has been moved to the WHERE clause

-- SELECT * 
-- FROM orders o
-- JOIN customers c
-- 	USING(customer_id)

-- The above is equivalent to following Implicit Syntax join
SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;