# 9.5 Stored Procedures parameters

-- We usually use Parameters to pass a value to the Stored Procedure
-- We can also use parameters to send values when calling a Stored Procedure

USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(
	-- Multiple parameters are separated by a comma (,).
    -- CHAR(2) a string with two (fixed length) characters, e.g., NY, LA, etc.
    -- Use VARCHAR() for strings with variable lengths.
	state CHAR(2)  
)
BEGIN
	SELECT * FROM clients c
    -- We can use aliases to help differenciate 'state' column, from 'state' parameter.
	WHERE c.state = state;
END$$

DELIMITER ;

-- Parameters, if defined, are required when calling a STORED PROCEDURE.
-- Not providing a paramater will raise an error.
CALL get_clients_by_state('CA');