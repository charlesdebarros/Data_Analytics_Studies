-- Subqueries in the SELECT clause

USE sql_invoicing;

SELECT 
	invoice_id,
    invoice_total,
    ROUND((SELECT avg(invoice_total) from invoices), 2) AS invoice_avg,
    invoice_total - (SELECT invoice_avg) AS difference
FROM invoices;