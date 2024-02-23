# Subqueries vs Joins
-- # We should choose between Subqueries and Joins depending on mostly two factors:
-- 		Performance
-- 		Readability

# Clients without invoices

USE sql_invoicing;
# Using a Subquery
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id
	FROM invoices
);

# The same but with a JOIN
# In this case, the Subquery is easier to understand. That is not always the case though.
SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL;