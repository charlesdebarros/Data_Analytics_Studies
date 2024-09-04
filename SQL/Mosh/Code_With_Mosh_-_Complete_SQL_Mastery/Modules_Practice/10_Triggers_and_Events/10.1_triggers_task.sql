# 10.1 Triggers - Task
-- Create a trigger that gets fired when we DELETE a payment.

USE sql_invoicing;

DROP TRIGGER IF EXISTS payments_after_delete;

DELIMITER $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
	FOR EACH ROW
BEGIN
	UPDATE invoices
    -- Here OLD gets the value of the amount that was deleted.
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END $$

DELIMITER ;