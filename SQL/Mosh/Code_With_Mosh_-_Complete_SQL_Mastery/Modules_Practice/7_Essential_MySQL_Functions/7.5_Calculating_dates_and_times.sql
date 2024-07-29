# 7.5 Calculating Dates and Times

-- DATE_ADD(<date_time>, <expression>)
-- Time forwards
SELECT 
	DATE_ADD(NOW(), INTERVAL 1 DAY) AS adding_one_day,
    DATE_ADD(NOW(), INTERVAL 1 MONTH) AS adding_one_month,
    DATE_ADD(NOW(), INTERVAL 1 YEAR) AS adding_one_year;
    
-- Time backwards
SELECT
	DATE_ADD(NOW(), INTERVAL -1 DAY) AS subtracting_one_day,
    DATE_ADD(NOW(), INTERVAL -1 MONTH) AS subtracting_one_month,
    DATE_ADD(NOW(), INTERVAL -1 YEAR) AS subtracting_one_year;

-- or
-- DATE_SUB()
SELECT
	DATE_SUB(NOW(), INTERVAL 1 DAY) AS subtracting_one_day,
    DATE_SUB(NOW(), INTERVAL 1 MONTH) AS subtracting_one_month,
    DATE_SUB(NOW(), INTERVAL 1 YEAR) AS subtracting_one_year;
    
-- DATEDIFF(<DATE_1>, <DATE_2>)
-- Only returns the difference in days
SELECT 
	DATEDIFF('2019-01-05', '2019-01-01') AS date_diff,
    -- Descriminating the hours will still return just an integer for the (days) times difference
    DATEDIFF('2019-01-05 17:00', '2019-01-01 17:00') AS date_diff_with_hour,
    -- Swapping the dates around, smaller first, will result in a negative number
    DATEDIFF('2019-01-01', '2019-01-05') AS smaller_date_first;

-- TIME_TO_SEC()
-- Returns the number of seconds elapsed since midnight
SELECT
	TIME_TO_SEC(NOW()) AS from_now,
    TIME_TO_SEC('09:00') AS from_specified_time,
    TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02') AS time_diff_secs;