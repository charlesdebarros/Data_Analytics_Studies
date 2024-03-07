# Creating a copy of a table
# When creating a table copy with this technique, SQL will ignore the original table's primary key and auto-increment.
# Those will be unmarked in the new table.
# If we need to insert a new row to this table, we will need to provide a PK value manually.

# 1. Creating a table
CREATE TABLE orders_archive AS
SELECT * FROM orders;  -- this query is referred as a subquery, a statment part of another statement.