-- 6.9 Subqueries in the SELECT clause

USE sql_invoicing;

SELECT 
	invoice_id,
    invoice_total,
    ROUND((SELECT avg(invoice_total) from invoices), 2) AS invoice_avg,
    -- Since we cannot use an alias to make a calculation, like invoice_total - invoice_avg,
    -- we can still use the alias in a SELECT statament to return that value
    invoice_total - (SELECT invoice_avg) AS difference
FROM invoices;