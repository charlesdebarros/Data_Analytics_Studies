# 10.6 Viewing and Dropping Events
--
-- To VIEW EVENTS
SHOW EVENTS;
-- SHOW EVENTS LIKE '%delete%';
-- SHOW EVENTS LIKE '%yearly%';  # Events triggered every year

-- To ALTER an EVENT
-- ALTER EVENT yearly_delete_stale_audit_rows
-- ON SCHEDULE 
--     EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-12-31'
-- DO BEGIN
-- 	DELETE FROM payments_audit
--     WHERE action_date < NOW() - INTERVAL 1 YEAR;
-- END$$

-- DELIMITER ;

-- To temporarily DISABLE an EVENT
-- ALTER EVENT <event_name> DISABLE/ENABLE;

-- To DROP an EVENT
-- DROP EVENT IF EXISTS <event_name>;