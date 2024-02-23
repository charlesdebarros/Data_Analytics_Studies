# Create a query to return:
# First half of 2019 total_sales, total_payments, difference between previous two
# Second half of 2019 total_sales, total_payments, difference between previous two
# Full 2019 total_sales, total_payments, difference between previous two

USE sql_invoicing;

SELECT
	'First Half of 2019' AS date_range,
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS 'Expect'
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'

UNION

SELECT
	'Second Half of 2019',
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS 'Expected'
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'

UNION

SELECT
	'Total',
	SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS 'Expected'
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31'
