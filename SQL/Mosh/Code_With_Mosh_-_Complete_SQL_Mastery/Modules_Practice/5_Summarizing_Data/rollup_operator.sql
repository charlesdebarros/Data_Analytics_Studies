# The ROLLUP operator
# WITH ROLLUP returns the sum of aggregated columns. It will not return a sum of client_ids, for example.
# WITH ROLLUP is not part of the standard SQL, it is only available on MySQL. It is not available on Oracle or Sequel Server, for example.
# WITH ROLLUP requires the real column names. Using aliases will raise an error.

USE sql_invoicing;

SELECT 
	state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP  -- Sums the entire column.