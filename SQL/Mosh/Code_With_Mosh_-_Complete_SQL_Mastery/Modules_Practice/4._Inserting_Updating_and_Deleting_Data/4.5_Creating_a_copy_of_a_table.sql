# 4.5 Creating a copy of a table

-- When creating a table copy with this technique, SQL will ignore the original table's primary key and auto-increment.
-- Those will be unmarked in the new table.
-- If we need to insert a new row to this table, we will need to provide a PK (order_id) value manually.

# 1. Creating a table
CREATE TABLE orders_archived AS
SELECT * FROM orders;  -- this query is referred as a subquery, a statment part of another statement.

-- Using a Subquery to insert filtered data into a table
INSERT INTO orders_archived  # No need to specify column names as the SELECT statement will provide values for all columns
SELECT * FROM orders
WHERE order_date < '2019-01-01';

SELECT * FROM orders_archived;