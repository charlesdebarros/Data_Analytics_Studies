# 9.6 STORED PROCEDURES with Default Paramaters - Task

-- Write a stored procedure called 'get_payments' with 2 (two) parameters.
--
-- client_id => INT,  (4-byte numbers)
-- payment_method_id => TINYINT (1-byte numbers)

USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$
CREATE PROCEDURE get_payments
(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	SELECT * FROM payments p
	WHERE p.client_id = IFNULL(client_id, p.client_id) AND 
		  p.payment_method = IFNULL(payment_method_id, p.payment_method);
END$$

DELIMITER ;

CALL get_payments(NULL, NULL);
-- Passing an argument for client_id only:
-- CALL get_payments(5, NULL);
--
-- Passing an argument for payment_method only:
-- CALL get_payments(NULL, 2)