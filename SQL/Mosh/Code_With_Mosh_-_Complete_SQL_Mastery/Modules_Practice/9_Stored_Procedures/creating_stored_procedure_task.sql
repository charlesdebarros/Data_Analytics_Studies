-- Creating Stored Procedures - Task

-- Create a stored prodecure called 'get_invoices_with_balance'
-- to return all the invoices with a balance > 0

USE sql_invoicing;

DELIMITER $$

CREATE PROCEDURE get_invoices_with_balance()
BEGIN
	-- Using the invoices table
    -- SELECT * FROM invoices
    -- WHERE invoice_total - payment_total > 0
    --
	-- Using invoices_with_balance VIEW
    -- This option will display the 'balance' column created in the VIEW
	SELECT * FROM invoices_with_balance
	WHERE balance > 0;
END$$

DELIMITER ;

CALL get_invoices_with_balance();