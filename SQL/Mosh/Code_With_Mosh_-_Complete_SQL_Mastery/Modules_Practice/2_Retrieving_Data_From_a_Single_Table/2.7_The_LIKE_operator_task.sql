# 2.7 The LIKE operator - task

-- Get the customers whose
-- 	addresses contain TRAIL or AVENUE
--     phone numbers end with a 9

USE sql_store;

SELECT * FROM customers
WHERE address LIKE '%trail%' OR 
	  address LIKE '%avenue';
      
SELECT * FROM customers
WHERE phone LIKE '%9';
-- WHERE phone NOT LIKE '%9';