-- Updatable Views
-- Views can also be used with INSERT, UPDATE, and DELETE but only under certain circumstances.
-- Sometimes, due to security reasons, if one does not have direct access to a table, the only alternative is to modify a table using a VIEW.

-- An UPDATABLE view is a view WITHOUT:
-- DISTINCT
-- Aggregate Functions: MIN, MAX, SUM, ...
-- GROUP BY / HAVING
-- UNION

-- For example:
-- Let's add a 'balance' column to the invoices table creating a VIEW:

USE sql_invoicing;

CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE (invoice_total - payment_total) > 0
WITH CHECK OPTION;

-- Running the updatable view:
SELECT *
FROM invoices_with_balance;

-- Modifying tables using the Updatable VIEW
-- Deleting rows
DELETE FROM invoices_with_balance
WHERE client_id = 1;

-- Updating
UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2;

-- Updating invoice_total
UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE client_id = 3;
