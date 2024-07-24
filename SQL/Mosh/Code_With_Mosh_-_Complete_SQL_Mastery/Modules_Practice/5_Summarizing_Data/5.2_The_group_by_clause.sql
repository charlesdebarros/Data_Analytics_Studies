# 5.2 The GROUP BY clause

-- The GROUP BY clause comes after the WHERE clause but before the ORDER BY clause

USE sql_invoicing;

-- A generica total_sales figure
SELECT 
	SUM(invoice_total) AS total_sales
FROM invoices;

-- Using GROUP BY to group total_sales by client_id
SELECT 
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices
-- We can use the WHERE clause to filter what is going to be grouped by
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
-- We can combine the GROUP BY clause with the ORDER BY clause
ORDER BY total_sales DESC;

-- Using GROUP BY to group values by one or more columns from multiple tables, in this case, client_id, then state, then city
SELECT
	c.name AS client,
    state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c
	USING (client_id)
GROUP BY client_id, state, city;