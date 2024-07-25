# 6.5 The ALL keyword
# Select invoices larger than all invoices of client 3

USE sql_invoicing;

# The usual approach
SELECT *
FROM invoices
WHERE invoice_total > (
	# Here the subquery returns a single value
	SELECT 
		MAX(invoice_total)
	FROM invoices
	WHERE client_id = 3
);

# Using the ALL keyword
SELECT * 
FROM invoices 
# Prefixing the subquery with ALL
WHERE invoice_total > ALL (
	# Here the subquery returns a list of multiple values, because of that, without the ALL keyword
    # MySQL will not be able to compare invoice_total with all the values
	SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
)