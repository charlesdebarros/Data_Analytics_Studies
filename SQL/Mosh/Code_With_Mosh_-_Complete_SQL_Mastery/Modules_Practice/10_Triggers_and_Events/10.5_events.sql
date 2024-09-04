# 10.5 Events in SQL
--
-- An EVENT is a task (or block of SQL code) that gets executed according to a schedule.
-- E.g., once a day, weekly, at 10am, etc.
-- Generally used for database maintenance tasks, such as deleting stale data, copying data from one table to an
-- archive table, aggregating data to generate reports.

-- Before scheduling an EVENT, we need to turn on MySQL Event Scheduler, it processes EVENTs in the background, 
-- and it constantly looks for EVENTs to execute.

-- Seeing all System Variables in SQL:
-- SHOW VARIABLES;
-- To see the Scheduler Event:

SHOW VARIABLES LIKE 'event%';
-- It is usually ON by default. To turn it ON, if it is OFF, use the SET GLOBAL statement:
-- SET GLOBAL event_scheduler = ON;
-- Turning EVENTs OFF save system resources.

-- To CREATE an EVENT
USE sql_invoicing;

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
	-- AT '2019-05-01'
    -- EVERY 2 HOURS (EVERY 2 DAYS, EVERY 1 YEAR, ...) STARTS ... ENDS;  STARTS and ENDS are optional.
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-12-31'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END$$

DELIMITER ;

-- ALTER can be used to temporarily DISABLE and ENABLE EVENTS:
-- ALTER EVENT yearly_delete_stale_audit_rows DISABLE/ENABLE;