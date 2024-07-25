# 4.7 Updating multiple records

-- The syntax is similar to updating a single row but the conditional statement WHERE needs to be more general
    -- For example, updating all invoices for client_id 3
-- MySQL run in safety mode, i.e., it only allows the update of a single row at a time.
-- This feature needs to be turned off in the Settings option.

USE sql_invoicing;

UPDATE invoices
SET payment_total = invoice_total * 0.5,  -- the value will be truncated to 2 decimal points 74,00, which is incorrect.
	payment_date = due_date
WHERE client_id = 3;
-- WHERE client_id IN (3, 4)

SELECT * FROM invoices;