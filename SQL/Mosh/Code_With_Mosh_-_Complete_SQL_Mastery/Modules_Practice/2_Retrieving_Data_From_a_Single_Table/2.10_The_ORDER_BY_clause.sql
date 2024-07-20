# 2.10 - The ORDER BY clause

-- Usually tables are primarily ordered by their Primary Key (unique values)
-- Tables can be ordered by any column
-- We use DESC to sort by descending order
-- We can sort table using multiple columns by separating the column name with a comma. The order of names is important. 
-- We can use the DESC key word on both or on a single column.
-- In MySQL, we can sort the table out using ANY columns, whether the column is present in the SELECT statement or not.
-- We can also sort out a table using an 'alias'
-- We can sort out a table by column position but that should be avoided as changing the columns order would return different results

USE sql_store;

SELECT * FROM customers
-- ORDER BY first_name;
-- ORDER BY first_name DESC;
-- ORDER BY state, first_name;
ORDER BY state DESC, first_name;  # Or 'state, first_name DESC'. Or even 'state DESC, first_name DESC'

-- In MySQL we can sort out the table using ANY column, whether or not the column is present in the SELECT statement
SELECT first_name, last_name
FROM customers
ORDER BY birth_date;  # birth_date is not in the SELECT statement

-- Sorting a table using an 'alias'
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name;

-- Sorting by column position (its use is not recommended)
SELECT first_name, last_name  # if we need to add another column before first_name, for example, that column would become 1, first_name would be 2
FROM customers
ORDER BY 1, 2;  # 1 -> first_name, 2-> last_name. It is good practice to do sorting using column names