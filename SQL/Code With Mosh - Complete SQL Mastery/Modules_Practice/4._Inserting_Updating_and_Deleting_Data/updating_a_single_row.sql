# Updating a SINGLE row

USE sql_invoicing;

SELECT * 
FROM invoices;

UPDATE invoices 
SET payment_total = DEFAULT,
	payment_date = NULL
WHERE invoice_id = 1;

# Client made a 50% payment on the due date
UPDATE invoices 
SET payment_total = invoice_total * 0.5,  -- the value will be truncated to 2 decimal points 74,00, which is incorrect.
	payment_date = due_date
WHERE invoice_id = 3;