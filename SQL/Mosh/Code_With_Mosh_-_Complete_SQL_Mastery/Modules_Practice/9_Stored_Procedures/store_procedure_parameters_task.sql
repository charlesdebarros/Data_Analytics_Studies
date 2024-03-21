-- Stored Procedure Parameters - Task

-- Write a STORED PROCEDURE to return invoices for a given client.
-- Call it 'get_invoices_by_client

USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_invoices_by_client;

DELIMITER $$
CREATE PROCEDURE get_invoices_by_client(client_id INT)
BEGIN
	SELECT * FROM clients c
    JOIN invoices i USING (client_id)
	WHERE c.client_id = client_id;
END$$

DELIMITER ;

CALL get_invoices_by_client(1);