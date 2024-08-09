# 9.6 STORED PROCEDURES with Default Paramaters

-- We can set default values to parameters. For example, if a value for 'state' is not passed as a parameters
-- then we can set 'CA' as the 'default' value.

USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state 
(
	state CHAR(2)
)
-- BEGIN
-- 	IF state IS NULL THEN
-- 		-- SET state = 'CA';
--         -- Return all clients if NO argument is given.
--         SELECT * FROM clients;
-- 	ELSE
-- 		-- Return clients with the arguments (state) given.
--     	SELECT * FROM clients c
-- 		WHERE c.state = state;
-- 	END IF;
-- END$$
--
-- Refactoring the code of block above
BEGIN
	SELECT * FROM clients c
    WHERE c.state = IFNULL(state, c.state);
END$$

DELIMITER ;

CALL get_clients_by_state(NULL);