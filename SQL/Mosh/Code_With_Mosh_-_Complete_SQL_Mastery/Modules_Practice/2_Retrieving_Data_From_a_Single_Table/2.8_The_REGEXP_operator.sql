# 2.8 The REGEXP operator
-- ^ -> must start with
-- $ -> must end with
-- | -> a logical or
-- [abd] match single characters listed within the square brackets
-- [a-z] match single characters from the range within the brackets
-- Other special characters are supported but not covered in this example

USE sql_store;

SELECT * FROM customers
-- WHERE last_name LIKE '%field%';  # Using LIKE
WHERE last_name REGEXP 'field';  # Returns the same values as using LIKE

SELECT * FROM customers
WHERE last_name REGEXP '^bru';

SELECT * FROM customers
WHERE last_name REGEXP 'field$';

SELECT * FROM customers
WHERE last_name REGEXP 'field|mac|rose';

SELECT * FROM customers
WHERE last_name REGEXP 'field$|mac|rose';  # must end with 'field', or have mac or rose in their names

SELECT * FROM customers
-- WHERE last_name REGEXP '[gim]e';  # Will look for strings which contains an 'e' following a 'g', 'i', or 'm' -> 'ge', 'ie', or 'me'
-- WHERE last_name REGEXP 'e[lyd]';  # Will look for strings which contains an 'e' followed by an 'l', 'y', or 'd' -> 'el', 'ey', or 'ed'
WHERE last_name REGEXP '[a-h]e';  # Using a range from 'a' to 'h'.