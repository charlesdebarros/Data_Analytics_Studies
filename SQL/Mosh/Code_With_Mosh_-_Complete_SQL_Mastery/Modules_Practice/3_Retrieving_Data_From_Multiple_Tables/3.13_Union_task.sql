# 3.13 UNION - task

-- Use the sql_store table
-- < 2000 = Bronze
-- between 2000 and 3000 = Silver
-- above 3000 = Gold
-- ORDER BY first_name

SELECT 
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000

UNION

SELECT 
	customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 and 3000

UNION

SELECT 
	customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;


