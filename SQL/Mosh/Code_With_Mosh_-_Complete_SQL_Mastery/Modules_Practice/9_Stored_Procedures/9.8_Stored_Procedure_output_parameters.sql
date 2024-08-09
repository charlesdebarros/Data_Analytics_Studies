# 9.8 STORED PROCEDURE Output Parameters

-- Parameters preceeded with the keyword OUT will be marked as OUT parameters
-- Avoid using OUT variables unless there is valid reason for using them

USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client;

-- Setting Variables
SET @invoices_count = 0;
SET @invoices_total = 0;

DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client
(
	client_id INT,
    OUT invoices_COUNT INT,
    OUT invoices_total DECIMAL(9, 2)
)
BEGIN
	SELECT 
		COUNT(*) ,
        SUM(invoice_total)get_unpaid_invoices_for_client
        INTO invoices_count, invoices_total
    FROM invoices i
	WHERE i.client_id = client_id 
		  AND payment_total = 0;
END$$

DELIMITER ;

CALL get_unpaid_invoices_for_client(3, @invoices_count, @invoices_total);
-- Calling variables
SELECT @invoices_count, @invoices_total;