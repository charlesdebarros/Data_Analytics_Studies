-- Altering or Dropping Views
-- It is best practice to save SQL files as .sql and store them in version control systems, like Git (GitHub, Bitbucket, Gitlab, etc.)
-- Reminder: Views do not store data. The data is stored in the tables.
-- Views only provide a visualisation of the underlying tables. 

-- When we notice that we have a proble with a VIEW, we need to recreate it.
-- One way to recreate a View is to DROP it and then rerun the CREATE VIEW command.

-- Example:
USE sql_inventory;

DROP VIEW sales_by_client;

-- Rerun the original code
CREATE VIEW sales_by_client AS
	SELECT
		c.client_id,
		c.name,
		SUM(invoice_total) AS total_sales
	FROM clients c
	JOIN invoices i USING (client_id)
	GROUP BY client_id, name;
    
-- Another, and preferred way, is to use the CREATE OR REPLACE VIEW command
-- Preferred because it bypasses the need to first DROP the view.
-- Altering the VIEW. Adding the last line.
CREATE OR REPLACE VIEW sales_by_client AS
	SELECT
		c.client_id,
		c.name,
		SUM(invoice_total) AS total_sales
	FROM clients c
	JOIN invoices i USING (client_id)
	GROUP BY client_id, name
    ORDER BY total_sales DESC;