# 2.2 The SELECT clause - task
-- Return all products:
-- 	names
--     unit prices
--     new price (unit price * 1.1)

USE sql_store;

SELECT
	name,
    unit_price,
    unit_price * 1.1 AS new_price
FROM products;