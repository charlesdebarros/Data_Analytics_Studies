-- Dropping a Stored Procedure
-- Just like VIEWS, it is good pratice to save the code to CREATE, DROP STORE PROCEDURE in a separate SQL file.
-- Then use source control, like GIT, to store these files.

-- DROP PROCEDURE get_clients()

-- Trying to DROP a STORE PROCEDURE that does not exist will raise an error. 
-- To prevent this, use the IF EXISTS keywords.

DROP PROCEDURE IF EXISTS get_clients;

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