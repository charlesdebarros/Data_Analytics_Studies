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