-- 6.9 Subqueries in the SELECT clause - Task
-- Return client_id, name, total_sales, average, diffence from the customers table in the sql_invoicing db
USE sql_invoicing;

SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id ) AS total_sales,
    ROUND((SELECT AVG(invoice_total) FROM invoices),2) AS average,
    ROUND((SELECT total_sales - average), 2) AS difference
FROM clients c;

