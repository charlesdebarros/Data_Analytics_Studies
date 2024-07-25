# 6.10 Subqueries in the FROM clause

-- We can use the result of a query (like a virtual table) in the FROM clause of another query. 
-- As using a subquery in FROM clause can become quite complex, it is usually best practice to save tha subquery in a VIEW
-- and use the VIEW to perform the query
-- Only use simple queries in a FROM clause
-- More on VIEWs later on Unit 8

USE sql_invoicing;

-- We can use the returning table of the Subquery in SELECT task as a virtual table for another query

SELECT * 
	FROM (
    -- Here a query became a subquery
	SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id ) AS total_sales,
		ROUND((SELECT AVG(invoice_total) FROM invoices),2) AS average,
		ROUND((SELECT total_sales - average), 2) AS difference
	FROM clients c
) AS sales_summary  # We MUST provide an alias to this subquery of a FROM clause
WHERE total_sales IS NOT NULL;