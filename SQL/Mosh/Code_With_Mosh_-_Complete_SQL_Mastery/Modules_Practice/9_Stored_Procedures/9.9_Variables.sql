# 9.9 Variables

-- We define variables using the keyword SET and prefixing them with an '@' sign. 
-- Example: SET @invoices_count = 0;
-- Variables will be available in memory during the entire client's session.
-- We then client disconnects from SQL, these variables will be freed up.
-- We usually refer to them as 'User or Session' variables.

-- In MySQL there are also LOCAL variables. These are variables define inside a PROCEDURE or Function.
-- Differently to Normal Variables, local variables are freed up once the procedure/function have finished executing.
-- Local variables DO NOT stay in memory for the intirity of the session.
-- Local variables are usually used for calculations in STORED PROCEDUREs.

USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_risk_factor()
BEGIN
	-- risk_factor = invoices_total / invoices_count * 5
    -- We will turn 'risk_factor', 'invoices_total', and 'invoices_count' into local variables.
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;

    SELECT COUNT(*), SUM(invoice_total) 
    INTO invoices_count, invoices_total
    FROM invoices;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END$$

DELIMITER ;

CALL get_risk_factor;