# Updating multiple records task
# Write a SQL statement to:
# 1. give any customers born before 1990, 50 extra points

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';