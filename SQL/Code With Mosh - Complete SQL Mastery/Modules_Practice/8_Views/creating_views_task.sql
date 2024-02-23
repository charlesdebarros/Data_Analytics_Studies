-- CREATE VIEW - task

-- Use the invoices table

-- Create a view to see the balance for each client
-- Name the view 'clients_balance'
-- Return:
--  client_id, name, balance (payment_total - invoice_total).

USE sql_invoicing;

CREATE VIEW clients_balance AS
	SELECT
		i.client_id,
		c.name,
		SUM(i.invoice_total - i.payment_total) AS balance
	FROM invoices i
	JOIN clients c USING (client_id)
	GROUP BY client_id, name;

SELECT * 
FROM clients_balance;