# Subqueries
# An statement inside another statement

INSERT INTO orders_archive
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';