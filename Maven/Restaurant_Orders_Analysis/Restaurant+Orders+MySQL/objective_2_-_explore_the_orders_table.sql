-- Objective 2: Explore the Orders table

-- View the order_details table.
SELECT * FROM order_details;

-- What is the date range of the table?
SELECT 
	MIN(order_date) AS 'from',
    MAX(order_date) AS 'to'
FROM order_details;

-- How many orders were made within this date range?
SELECT 
	COUNT(DISTINCT order_id) AS count_of_orders
FROM order_details;

-- How many items were ordered within this date range?
SELECT
	COUNT(*) AS items_ordered
FROM order_details;

-- Which orders had the most number of items?
SELECT
	order_id,
    COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- How many orders had more than 12 items?
-- Using a subquery
SELECT 
	COUNT(*) AS num_orders_with_12_plus_items 
FROM (SELECT
	order_id,
    COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12) AS num_orders;