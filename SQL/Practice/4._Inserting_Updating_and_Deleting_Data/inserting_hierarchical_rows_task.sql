# Inserting into hierarchical tables task

# Use sql_invoicing database
# invoices table

# create a copy of records in this table, replacing client_id with the client name, and only invoice with a payment made. 
# Call it invoices_archive

USE sql_invoicing;

CREATE TABLE invoices_archive AS
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client_name,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
LEFT JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL;