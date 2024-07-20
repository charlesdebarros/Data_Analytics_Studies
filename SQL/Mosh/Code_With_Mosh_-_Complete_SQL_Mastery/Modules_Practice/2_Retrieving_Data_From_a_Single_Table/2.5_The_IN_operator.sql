# 2.5 The IN operator

-- The IN operator allows us to pass a list of item when filtering a query.
-- The inverse is NOT IN

USE sql_store;

SELECT * FROM customers
WHERE state = 'VA';  # Filters the query using only one state, VA.

-- Using IN 
SELECT * FROM customers
-- WHERE state = 'VA' OR state = 'FL' OR state = 'GA'  # This cluttered conditional can be cleaned and simplified as below
WHERE state IN ('VA', 'FL', 'GA');

-- Using NOT IN
SELECT * FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');