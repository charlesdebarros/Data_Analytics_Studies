USE sql_store;
# The SELECT Statement
SELECT * FROM customers
WHERE state IN ('CA', 'MA');

SELECT 
	customer_id,
    CONCAT(first_name, ' ', last_name) AS fullname,
    address,
    city,
    state
FROM customers;