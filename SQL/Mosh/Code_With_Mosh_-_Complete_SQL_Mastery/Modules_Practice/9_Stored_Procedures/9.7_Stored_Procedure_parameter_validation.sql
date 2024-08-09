# 9.7 Stored Procedure Paramater Validation

-- Procedures can also be used to INSERT, UPDATE, and DELETE data
-- Procedure validation allows SQL to prevent inserting bad data to the database
-- SQLSTATE error codes reference -> https://www.ibm.com/docs/en/i/7.5?topic=codes-listing-sqlstate-values

USE sql_invoicing;

DROP PROCEDURE IF EXISTS make_payment;

DELIMITER $$
CREATE PROCEDURE make_payment
(
	invoice_id INT,
    payment_amount DECIMAL(9, 2),
    payment_date DATE
)
BEGIN
	IF payment_amount <= 0 THEN 
		SIGNAL SQLSTATE '22003'
            SET message_text = 'Invalid payment amount';
	END IF;
    
	UPDATE invoices i
    SET 
		i.payment_total = payment_amount,
        i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
END$$

DELIMITER ;

CALL make_payment(2, 100, '2019-01-01');