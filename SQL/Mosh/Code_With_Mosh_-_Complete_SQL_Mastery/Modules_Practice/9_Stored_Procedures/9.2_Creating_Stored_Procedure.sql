# 9.2 Creating a Stored Procedure

-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/create-procedure.html

-- CREATE PROCEDURE <procedure_name> (optional_paramenters)
-- Note:
--   The notation convention amongst SQL developers is to create variables, procedures names using snake_case, e.g., get_clients
--
-- A DELIMITER is needed as the ';' will raise errors.
-- We need to set DELIMITER, in the example below '$$' and then, after the SQL block is finished, RESET the DELIMITER back to ';'.
-- The convention is to use '$$' but any other characters are allowed, e.g., '//'.

-- We cannot use USE inside a Procedure
USE sql_invoicing;
    
-- Changing delimiter to '$$'
DELIMITER $$  
CREATE PROCEDURE get_clients()
BEGIN
	SELECT * FROM clients;
END$$

-- Changing delimiter back to ';'
DELIMITER ;

-- To access a stored procedure, we need to 'call' it using the CALL statement:
CALL sql_invoicing.get_clients();