-- The EXISTS Operator
-- Select clients that have an invoice

USE sql_invoicing;

-- Using normal IN operator
SELECT * 
FROM clients
-- The IN operator returns a list of results. If the list is too long, then it is more AS
-- efficient to use the EXISTS operator as it returns just the rows that return TRUE to the subquery
WHERE client_id IN (
	SELECT DISTINCT client_id
    FROM invoices
);

-- Using an INNER join between the clients and invoices table would only return clients with invoices

-- Using EXISTS operator
SELECT * 
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    -- Using a correlated subquery
    WHERE client_id = c.client_id
);