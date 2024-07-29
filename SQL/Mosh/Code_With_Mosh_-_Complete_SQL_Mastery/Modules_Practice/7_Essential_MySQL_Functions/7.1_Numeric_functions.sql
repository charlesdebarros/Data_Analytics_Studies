# 7.1 Numeric Functions

-- Reference -> https://dev.mysql.com/doc/refman/8.0/en/numeric-functions.html

-- ROUND(float_number, decimals)
SELECT ROUND(5.73) AS rounded_value;
SELECT ROUND(5.73, 1) AS rounded_value;

-- TRUNCATE(float_number, decimals)
-- It is not the same as ROUND(), it just keeps X numbers after the decimal point
SELECT TRUNCATE(5.7345, 2) AS truncated_number;
SELECT TRUNCATE(2.5778, 2) AS truncated_number;

-- CEILING(number)
-- Returns the smallest integer that is greater than or equal to the number
SELECT CEILING(5.7) AS number_ceiling;
SELECT CEILING(6.0) AS number_ceiling;

-- FLOOR(number)
-- Returns the smallest integer that is less than or equal to the number
SELECT FLOOR(5.7) AS number_floor;
SELECT FLOOR(6.0) AS number_floor;

-- ABS(number)
-- Returns the absolute value of a number. It ALWAYS returns a positive value.
SELECT ABS(5.2) AS number_absolute_value;  # 5.2
SELECT ABS(-5.2) AS number_absolute_value;  # 5.2

-- RAND(seed)
-- Returns a random decimal number (no seed value - it returns a completely random number >= 0 < 1
SELECT RAND() AS random_number;  # the number changes everytime
SELECT RAND(6) AS random_number;  # the random number is the same every time.