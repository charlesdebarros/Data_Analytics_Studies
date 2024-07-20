-- 2.9 The NULL operator

-- Looking for records with missing attributes using IS NULL or NOT NULL
-- NULL means an absence of a value

USE sql_store;

SELECT * FROM customers
WHERE phone IS NULL;  # returns customers WITHOUT phone numbers
-- WHERE phone IS NOT NULL;  # returns customers WITH phone numbers