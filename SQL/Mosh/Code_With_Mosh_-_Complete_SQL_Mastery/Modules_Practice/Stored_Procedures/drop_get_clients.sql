USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_clients;

-- Changing delimiter to '$$'
DELIMITER $$  
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$

-- Changing delimiter back to ';'
DELIMITER ;