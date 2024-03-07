# The ANY and SOME keywords

# Select clients with at least TWO invoices

USE sql_invoicing;
# Using IN
SELECT *
FROM clients
WHERE client_id IN (
	SELECT
		client_id
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
);

# Using = ANY -> Equivalent to the IN
SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT client_id
    FROM invoices
    GROUP BY client_id
    HAVING COUNT(*) >= 2
)
