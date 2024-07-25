# 6.3 The IN Operator - part 2 - task

-- Find clients without invoices 

USE sql_invoicing;

SELECT * 
FROM clients
WHERE client_id NOT IN(
	SELECT 
		DISTINCT client_id
	FROM invoices
);