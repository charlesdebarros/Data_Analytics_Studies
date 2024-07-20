# 2.10 - The ORDER BY clause - task

-- Use order_items
-- Find items from order_id 2
-- Sort them by total_price (quantity * unit_price) in descending order.

USE sql_store;

SELECT * FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;  # the sorting criterium does not need to be a column name, it can be an expression

SELECT *, quantity * unit_price AS total_price 
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;  # Setting the expression on the SELECT statment and using its alias to sort the table