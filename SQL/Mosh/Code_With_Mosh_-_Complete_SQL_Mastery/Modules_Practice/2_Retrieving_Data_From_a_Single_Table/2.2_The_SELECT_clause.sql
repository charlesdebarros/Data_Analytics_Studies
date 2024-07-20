# The SELECT clause

USE sql_store;

SELECT 
	first_name,
    last_name,
    concat(address, ', ', state) AS address,
    points,
    round(points * 0.1, 0) AS '10% Bonus'
FROM customers;

SELECT DISTINCT(state)
FROM customers;