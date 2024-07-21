# 3.4 Joining multiple tables -task

-- Use sql_invoiving
-- Join the payments table with the clients table and the payment_methods table
-- Return a table displaying the name of the client and the payment method

USE sql_invoicing;

SELECT 
	p.invoice_id,
	p.date,
	p.amount,
    c.name,
    pm.name AS 'payment method'
FROM payments p
JOIN clients c 
	USING(client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;