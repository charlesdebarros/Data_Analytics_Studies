# 4.9 Deleting Rows

-- DELETE FROM <table>
-- Write search conditions (WHERE) to choose what to delete
-- 'DELETE FROM invoices' will delete the records in the table

USE sql_invoicing;

DELETE FROM invoices
WHERE invoice_id = 1;

-- Using the DELETE clause with subqueries
DELETE FROM invoices
WHERE client_id = (
	SELECT 
		client_id
	FROM clients
	WHERE name = 'MyWorks'
);

-- Subquery
-- Finding the client_id
SELECT 
	client_id
FROM clients
WHERE name = 'MyWorks';