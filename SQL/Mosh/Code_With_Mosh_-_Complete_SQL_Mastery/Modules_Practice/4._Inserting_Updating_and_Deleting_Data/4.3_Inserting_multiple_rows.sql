# 4.3 Inserting Multiple rows

USE sql_store;

-- Syntax
-- INSERT INTO <table> (<column_name>)
-- VALUES  (<value_1>),
-- 		(<value_2>),
--         ...,
--         (<value_n>);

INSERT INTO shippers (name)
VALUES 	('FastUK'), 
		('Speedster'),
        ('Gonzales');
        
SELECT * 
FROM shippers;