# 4.3 Inserting Multiple Rows - task

-- Insert three rows in the products table

USE sql_store;

INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES 
	('Wool socks', 50, 3.50), 
    ('Colour pencils', 25, 4.99),
    ('USB pendrives', 50, 9.99);

SELECT * FROM products;
    