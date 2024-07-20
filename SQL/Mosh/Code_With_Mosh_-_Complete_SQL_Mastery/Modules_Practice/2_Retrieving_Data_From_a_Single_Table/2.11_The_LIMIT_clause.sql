# 2.11 The LIMIT clause

-- We can use LIMIT to return only an x number of rows
-- We can also use LIMIT to skip (offset) some rows and start from x column to y column.
-- The LIMIT clause ALWAYS comes at the end. 

USE sql_store;

SELECT * 
FROM customers
LIMIT 3;

-- Using LIMIT to skip (offset) columns
SELECT * 
FROM customers
LIMIT 6, 3;  # Skip 6 rows, and display the next 3 rows