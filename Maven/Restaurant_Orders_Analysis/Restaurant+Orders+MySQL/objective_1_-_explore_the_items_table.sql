-- Objective 1: Explore the Items table

USE restaurant_db;

-- View the menu_table.

-- write a query to find the number of items on the menu.
SELECT 
	COUNT(*) AS items_total
FROM menu_items;

-- What is the least expensive item on the menu?
SELECT * FROM menu_items
ORDER BY price
LIMIT 1;

-- And most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- How many Italian dishes are there on the menu? 
SELECT COUNT(*) AS num_italian_dishes FROM menu_items
WHERE category = 'Italian';

-- What are the least expensive Italian dished?
SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price
LIMIT 1;

-- And the most expensive? 
SELECT * FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

-- How many dishes are there in each category? 
SELECT
	category,
	COUNT(menu_item_id) AS category_count
FROM menu_items
GROUP BY category;

-- What is the average dish price within each category?
SELECT 
	category,
    ROUND(AVG(price), 2) AS average_price
FROM menu_items
GROUP BY category;
