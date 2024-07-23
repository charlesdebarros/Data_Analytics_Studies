# 4.6 Updating a SINGLE row

USE sql_invoicing;

SELECT * 
FROM invoices;

-- Updating the payment_total and payment_date for invoice_id 1
UPDATE invoices
SET payment_total = 10,
	payment_date = '2019-03-01'
WHERE invoice_id = 1;

-- Let's suppose we had updated the wrong row. In order to restore the original values of the columns, we do:
UPDATE invoices 
SET payment_total = DEFAULT,
	payment_date = NULL
WHERE invoice_id = 1;

# Client made a 50% payment on the due date
UPDATE invoices 
-- Updating the payment_total using an expression
-- Using the value available on the due_date column to update the payment_date
SET payment_total = invoice_total * 0.5,  -- the value will be truncated to 2 decimal points 74,00, which is incorrect.
	payment_date = due_date
WHERE invoice_id = 3;