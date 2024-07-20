# 2.4 The AND, OR, and NOT Operators - Task

-- From the order_items table, get the items
-- 	for order #6
-- 	where the total price is greated than 30

USE sql_store;

SELECT * 
FROM order_items
WHERE order_id = 6 AND (unit_price * quantity) > 30;