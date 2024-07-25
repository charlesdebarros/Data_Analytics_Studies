# 4.4 Inserting into hierarchical tables & 4.5 Creating a copy of a table task

# Use sql_invoicing database
# invoices table

# Create a copy of records in this table, replacing client_id with the client name, and only invoice with a payment made. 
# Call it invoices_archive

USE sql_invoicing;

-- If this query is run more than once, an error will be raised as the table already exists
CREATE TABLE invoices_archived AS
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

SELECT * FROM invoices_archived;