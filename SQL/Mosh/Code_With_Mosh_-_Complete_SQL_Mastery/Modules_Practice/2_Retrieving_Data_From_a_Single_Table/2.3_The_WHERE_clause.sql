# 2.3 The WHERE clause
-- The comparison operators
-- > -> Greater than
-- < -> less than
-- >= -> greater than or equal to
-- >= -> less than or equal to
-- = -> equal
-- !=, <> -> not equal

USE sql_store;

SELECT * FROM customers
WHERE points > 3000;

SELECT * FROM customers
WHERE state != 'VA';

SELECT * FROM customers
WHERE birth_date > '1990-01-01';