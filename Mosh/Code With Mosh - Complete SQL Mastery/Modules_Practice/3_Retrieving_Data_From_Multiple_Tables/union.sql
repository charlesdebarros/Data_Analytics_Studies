# UNIONS

SELECT 
	order_id,
    order_date,
    'Active' AS status
FROM orders o
WHERE o.order_date >= '2019-01-01'

UNION

SELECT 
	order_id,
    order_date,
    'Archived'
FROM orders
WHERE order_date < '2019-01-01';
