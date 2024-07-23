# 4.8 Using Subqueries in Updates

-- Suppose we do not have the client_id number but we have its name
-- Note: Run the subquery first to make sure it will return what is expected

USE sql_invoicing;

-- We are using a subquery to find out the client_id of a client
UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = (
	SELECT client_id
	FROM clients
	WHERE name = 'MyWorks'
);

# Clients in NY and CA
# Notice the need to replace the '=' with a 'IN' statement
-- WHERE client_id IN (
-- 	SELECT client_id
-- 	FROM clients
-- 	WHERE state IN ('CA', 'NY')
-- )

SELECT * FROM invoices
WHERE client_id = 2;