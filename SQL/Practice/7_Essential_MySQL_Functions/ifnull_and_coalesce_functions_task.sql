-- The IFNULL and COALESCE functions - Task
-- Using the sql_store database, write a query to return 
--   customer(full name) and phone(phone number)
--   Return 'Unknown' if there is no phone number available.

USE sql_store;

SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
    IFNULL(phone, 'Unknown') AS phone
    -- "COALESCE(phone, 'Unknown') AS phone" is also correct.
FROM customers;