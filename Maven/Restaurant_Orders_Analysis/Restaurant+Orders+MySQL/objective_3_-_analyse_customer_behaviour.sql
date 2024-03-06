-- Objective 3: Analyse customer behaviour
-- The assignment: we have been asked to dig into the customer data to see which menu items
-- are/are not doing well and what the top customers seem to like best.

SELECT * FROM menu_items;
SELECT * FROM order_details;

-- Combine the 'menu_items' and 'order_details' table into a single table
SELECT * FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;

-- What were the least and most ordered items?
SELECT 
	item_name,
	COUNT(order_details_id) AS num_purchases
FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY item_name
-- ORDER BY num_purchases;  -- returns least ordered item
ORDER BY num_purchases DESC; -- returns the most ordered item

-- What categories were they in?
SELECT 
	item_name,
    category,
	COUNT(order_details_id) AS num_purchases
FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
-- ORDER BY num_purchases;  -- returns least ordered item - not doing well
ORDER BY num_purchases DESC; -- returns the most ordered item - doing well

-- What were the top 5 orders that spent the most money?
SELECT 
	order_id,
	SUM(price) AS total_spent
FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY order_id
-- ORDER BY total_spent;  -- returns least total_spent order
ORDER BY total_spent DESC
LIMIT 5; -- returns the most total_spent order

-- View the details of the biggest spend order.
SELECT 
	order_id,
    category,
    COUNT(item_id) AS num_items,
    SUM(price) AS total_ordered
FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- What insights can we gather from the results?

-- BONUS: View the details of the top 5 highest spend orders.
SELECT
	order_id,
    category,
    COUNT(item_id) AS num_items,
    SUM(price) AS total_ordered
FROM order_details od
-- Using a LEFT JOIN to keep all the left table details, in this case, the order_details
-- Using an INNER JOIN would not return NULL values.
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category
ORDER BY order_id, num_items DESC;

-- What insights can we gather from the results?
-- Amongst the top orders, Italian food seems to be the most popular. Exploring other types of Italian food may be a good strategy.
-- On the other hand, Mexican food seems to be the least popular. Peharps a revamp of the Mexican menu might be in order. 