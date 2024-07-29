# 8.1 Creating VIEWS

-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/create-view.html

-- We can save queries or subqueries in a view
-- Views can be reused
-- Views do not store data. The data is stored in the tables.
-- Views only provide a visualisation of the underlying tables. 

USE sql_invoicing;

-- Creating a view
-- Running this code will create a view but it will not return anything visually.
-- We can find View tables undes database>Views menu
-- In order to see the content of that view, it needs to be invoqued. 

CREATE VIEW sales_by_client AS
	SELECT
		c.client_id,
		c.name,
		SUM(invoice_total) AS total_sales
	FROM clients c
	JOIN invoices i USING (client_id)
	GROUP BY client_id, name;
    
-- Calling the created view
SELECT * 
FROM sales_by_client;

-- Using filters in the view
SELECT * 
FROM sales_by_client
ORDER BY total_sales DESC;

SELECT * 
FROM sales_by_client
WHERE total_sales > 500
ORDER BY total_sales DESC;

-- Joining with other tables with a common field
SELECT * 
FROM sales_by_client
JOIN clients USING (client_id);

