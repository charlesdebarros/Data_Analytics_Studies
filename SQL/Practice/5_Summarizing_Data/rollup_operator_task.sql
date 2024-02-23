# The WITH ROLLUP operator task
# Use the sql_invoicing database payments table
# Total sum of each payment method
# Total sum of all of them

USE sql_invoicing;

SELECT 
	pm.name AS payment_method,
	SUM(amount) AS total
FROM payments p
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id
GROUP BY pm.name with rollup