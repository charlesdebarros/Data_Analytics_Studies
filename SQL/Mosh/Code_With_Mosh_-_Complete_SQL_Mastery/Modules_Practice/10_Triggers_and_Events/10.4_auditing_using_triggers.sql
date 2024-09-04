# 10.4 Auditing using TRIGGERS
--
-- Script to create payments_audit table
--
-- SCRIPT 
-- USE sql_invoicing;
-- 
-- CREATE TABLE payments_audit
-- (
-- 		client_id	INT 			NOT NULL,
--    	date		DATE			NOT NULL,
--    	amount		DECIMAL(9, 2) 	NOT NULL,
--    	action_type	VARCHAR(50)		NOT NULL,
--    	action_date	DATETIME		NOT NULL
-- );
--
-- END SCRIPT
--
-- See audit lines added to the payments table.

-- USE sql_invoicing;

-- INSERT INTO payments
-- VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);

-- DELETE FROM payments WHERE payment_id = 14;