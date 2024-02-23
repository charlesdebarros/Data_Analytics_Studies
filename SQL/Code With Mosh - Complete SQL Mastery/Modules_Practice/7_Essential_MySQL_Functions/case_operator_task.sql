-- The CASE operator - Task

-- Write a query to classify customers according to their points scores:
-- > 3000 -> Gold
-- > 2000 -> Silver
-- <= 2000 -> Bronze
-- Return customer full name, points and category

SELECT 
	CONCAT(first_name, ' ', last_name) AS customer,
    points,
    CASE 
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
    END AS category
FROM sql_store.customers
ORDER BY points DESC;