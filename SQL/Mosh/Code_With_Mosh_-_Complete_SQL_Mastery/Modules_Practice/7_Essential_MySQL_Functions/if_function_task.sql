-- The IF Function - Task
-- Write a query to return
-- product_id, name, orders, frequency (Once, Many time)

SELECT 
	product_id,
    name,
    COUNT(*) AS orders,
    IF(COUNT(*) > 1, 'Many times', 'Once') AS frequency
FROM sql_store.products
JOIN order_items USING(product_id)
GROUP BY product_id, name;