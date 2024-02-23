# The GROUP BY clause

USE sql_invoicing;

SELECT
	c.name AS client,
    state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c
	USING (client_id)
GROUP BY client_id, state, city;