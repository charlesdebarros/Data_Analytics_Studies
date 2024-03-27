USE sql_invoicing;

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-12-31'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END$$

DELIMITER ;