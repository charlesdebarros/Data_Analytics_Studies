# Aggregate functions
# A Function is a piece of code that can be reused. There are many functions already in SQL
# Aggregates many values into a single value
# MAX(), MIN(), AVG(), SUM(), COUNT()
# NULL values found in columns are not included in the functions.

USE sql_invoicing;

SELECT 
	MAX(invoice_total) AS highest,
	MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total) AS invoices_total,
    COUNT(invoice_total) AS invoices_count,
    COUNT(payment_date) AS payment_dates_count,  # there are NULL values present in payment_date
    COUNT(*) AS total_records, # Counts regardless of NULL values
    COUNT(client_id) AS total_clients, # It will count duplicate records
    COUNT(DISTINCT client_id) AS unique_clients_total # Will not count duplicate records
FROM invoices
WHERE invoice_date > '2019-07-01'
