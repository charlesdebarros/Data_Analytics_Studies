# 7.8 The CASE Operator

-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/flow-control-functions.html

-- CASE value WHEN compare_value THEN result [WHEN compare_value THEN result ...] [ELSE result] END
-- CASE WHEN condition THEN result [WHEN condition THEN result ...] [ELSE result] END

-- The first CASE syntax returns the result for the first value=compare_value comparison that is true. 
-- The second syntax returns the result for the first condition that is true. If no comparison or condition is true, the result after ELSE is returned, or NULL if there is no ELSE part.
-- Note:

-- The syntax of the CASE operator described here differs slightly from that of the SQL CASE statement described in Section 15.6.5.1, 
-- See -> https://dev.mysql.com/doc/refman/8.3/en/case.html
-- “CASE Statement”, for use inside stored programs. The CASE statement cannot have an ELSE NULL clause, 
-- and it is terminated with END CASE instead of END.

-- An IF(function) example:
SELECT 
	order_id,
    IF(year(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category
FROM sql_store.orders;

-- What if there more than two options? Use the CASE operator.
SELECT
	order_id,
    -- Subtractinv NOW() from -5, -6, because the current year in the tutorial's database was 2019.
    CASE
		WHEN YEAR(order_date) = YEAR(NOW()) - 5 THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 6 THEN 'Last Year'
        WHEN YEAR(order_date) < YEAR(NOW()) - 6 THEN 'Archived'
        ELSE 'Future'
	END as category
FROM sql_store.orders;
    