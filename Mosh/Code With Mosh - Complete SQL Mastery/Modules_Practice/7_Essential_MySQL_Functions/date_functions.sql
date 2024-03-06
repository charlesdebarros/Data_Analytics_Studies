-- Date and Time functions
-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/date-and-time-functions.html

-- NOW()
SELECT NOW();  # Returns 2024-02-14 13:05:45

-- YEAR()
SELECT YEAR(NOW());

-- MONTH()
SELECT MONTH(NOW());

-- DAY()
SELECT DAY(NOW());

-- HOUR()
SELECT HOUR(NOW());

-- MINUTE()
SELECT MINUTE(NOW());

-- SECOND()
SELECT SECOND(NOW());

-- DAYNAME(), MONTHNAME()
SELECT 
	DAYNAME(NOW()) AS day_name,
    MONTHNAME(NOW()) AS month_name;

-- CURDATE()  # Current date - returns 2024-02-14
SELECT CURDATE();

-- CURTIME()  # Current time - returns 13:06:37
SELECT CURTIME();

-- Extracting components from Date and Time
-- EXTRACT(<UNIT> FROM <SOURCE>)
SELECT 
	EXTRACT(YEAR FROM NOW()) AS extracted_year,
    EXTRACT(DAY FROM NOW()) AS extracted_day;