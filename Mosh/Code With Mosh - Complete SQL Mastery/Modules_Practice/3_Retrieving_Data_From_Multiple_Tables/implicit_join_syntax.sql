# Implicit Join Syntax
# It is better to use the EXPLICIT join syntax!

-- SELECT * 
-- FROM orders o
-- JOIN customers c
-- 	USING(customer_id)

# Is equivalent to
SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id