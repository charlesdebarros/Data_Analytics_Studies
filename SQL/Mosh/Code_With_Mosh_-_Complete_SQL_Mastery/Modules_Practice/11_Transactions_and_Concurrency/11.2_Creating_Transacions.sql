# 11.2 Creating Transactions

-- Transaction blocks must be created between a "START TRANSATION" and a "COMMIT" statement.
-- If we want to do some error checking and manually rollback a transation, we create the transation block between a "START TRANSATION" and
-- a "ROLLBACK" statement, instead of the "COMMIT" statement.

-- MySQL, by default, wraps every single statment written (INSERT, UPDATE, DELETE...) in a TRANSACTION block and does an automatic COMMIT.
-- SHOW VARIABLES LIKE "autocommit";  # autocommit is ON by default

USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);
	
INSERT INTO order_items  # All columns in this table are required
VALUES (LAST_INSERT_ID(), 1, 1, 1);

# COMMIT prompts MySQL to write all changes to the database
# If any of the changes fail, it will automatically undo the other changes, rolling the transaction back
COMMIT;  