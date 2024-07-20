# 2.7 The LIKE operator

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator:
--      The percent sign % represents zero, one, or multiple characters
--      The underscore sign _ represents one, single character

USE sql_store;

SELECT * FROM customers
-- WHERE last_name LIKE 'b%';  # Begins with a 'b' plus any number of characters. 
-- WHERE last_name LIKE 'Brush%';  # Begins with a 'Brush' plus any number of characters. Note that the search is case insensitive. 'brush%' would also work.
-- WHERE last_name LIKE '%b%';  # Any strings that contain a 'b'.
-- WHERE last_name LIKE '_____y';  # 5 dashes followed by 'y'. Each dash represents a single (any) character. 
WHERE last_name LIKE 'b____y';