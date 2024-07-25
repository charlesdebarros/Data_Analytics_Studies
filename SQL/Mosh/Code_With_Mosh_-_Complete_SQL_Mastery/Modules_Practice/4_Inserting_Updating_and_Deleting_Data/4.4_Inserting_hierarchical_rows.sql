# 4.4 Inserting Hierarchical rows 

-- Inserting data into multiple tables
-- See the 'orders' table. It is composed of data from other tables: customers, order_items, order_statuses, shippers.
-- One order can have many order_items -> A Parent/Child relationship

USE sql_store;

-- Required columns: order_id (auto-increment), customer_id, order_date, status
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

-- Required columns: order_id, product_id, quantity, unit_price
-- We use the LAST_INSERT_ID() function to insert the last order_id created
INSERT INTO order_items
VALUES  (LAST_INSERT_ID(), 1, 1, 2.95), 
		(LAST_INSERT_ID(), 2, 1, 3.95);
        
SELECT LAST_INSERT_ID();

SELECT * FROM orders;
SELECT * FROM order_items;