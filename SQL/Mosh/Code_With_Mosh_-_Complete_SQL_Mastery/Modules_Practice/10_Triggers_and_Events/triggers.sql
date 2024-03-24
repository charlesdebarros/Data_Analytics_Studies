-- Triggers
-- MySQL reference -> https://dev.mysql.com/doc/refman/8.3/en/trigger-syntax.html
-- -> https://dev.mysql.com/doc/refman/8.3/en/faqs-triggers.html 
-- A Trigger is a block of SQL code that automatically gets executed BEFORE or AFTER an INSERT, UPDATE, or DELETE statement.
-- For example, a table containing invoices data should be automatically updated whenever there is a payment made/registered in the
-- payments table. 
--
-- In a trigger, we can modify data in any tables EXCEPT the table the trigger is for, otherwise we end up with an infinite loop
-- as the trigger will fire itself.

USE sql_invoicing;

DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$
-- It is a convention to name trigger according to their actions 'before', 'after', etc + action that will trigger it, e.g., insert.
CREATE TRIGGER payments_after_insert 
	AFTER INSERT ON payments
    FOR EACH ROW
-- Can be either raw SQL or calling a Stored Procedure, for example.
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount  -- 'amount' is a column name.
    WHERE invoice_id = NEW.invoice_id;
END $$

DELIMITER ;

INSERT INTO payments
-- DEFAULT is automatically generate a payment_id
-- (new_payment_id, client_id, invoice_id, date, amount, payment_method)
VALUES (DEFAULT, 5, 3, '2019-01-01', 10, 1);