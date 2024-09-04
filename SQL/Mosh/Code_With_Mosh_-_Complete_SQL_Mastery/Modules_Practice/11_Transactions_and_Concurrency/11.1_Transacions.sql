# 11.1 Transations

-- Reference -> https://dev.mysql.com/doc/refman/8.4/en/sql-transactional-statements.html

-- A TRANSACTION is a group of SQL statements that represent a single unit of work.
-- ALL statements must complete successfully of the TRANSACTION will fail. 
-- Example:
-- 	In a bank transation:
-- 		Money out from an account (DEBIT operation)
--         Money in another account (CREDIT operation)
--         DEBIT and CREDIT must work as ONE unit of work. One TRANSACTION.

-- The same applies to a Database TRANSATION. Either every change is successful or they fail together as a single unit.

-- For example:
-- 	When creating a new order, products also needed to be added to the order_items table.
--     If we insert a new order but the database server crashes exactly when are inserting the order_items. We would end up with an incomplete order.
--     The database would not be in a consistent state.
--     Everything must work accordingly. 

-- ACID Properties:
-- 	A: Atomicity -> transactions are like atoms, and should be unbreakable. Each transation is a single unit of work, regardless of the number of statements.
-- 		Either all statements work and the transation is committed or the transaction is rolled back. 
-- 	C: Consistency -> When transactions work properly, a database will always be in a consistent state.
--  I: Isolation -> Transations are isolate, i.e., protected from each other, if they try to modify the same data. They cannot interfere with each other.
-- 		If multiple transactions try to update the same data, the rows that are being affected are locked so that only one transaction 
-- 		at time can update those rows. Other transactions have to wait until that transaction is complete.
-- 	D: Durability -> Once a transaction is committed, the changes made by that transaction are permament. If a system crash or a power faility happen,
-- 		the changes are not lost. 