# 7.6 The IFNULL and COALESCE functions

-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/flow-control-functions.html

-- IFNULL()
-- IFNULL(expr1, expr2)
--   If expr1 is not NULL, IFNULL() returns expr1; otherwise it returns expr2. 

USE sql_store;

SELECT 
	order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper
FROM orders;

-- COALESCE()
-- COALESCE(val1, val2, ...., val_n)
-- The COALESCE() function returns the first non-null value in a list.

SELECT
	order_id,
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper
FROM orders;