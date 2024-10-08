# 9.1 Stored Procedure (Where to write SQL code)

-- Stored Procedure is a database object that contains a block of SQL code. 
-- 
-- We should not write SQL code directly into the app as it will make the code messy;
-- if the app had been built using a compiled language, like C# or Java, any changes in the SQL code will mean 
-- the app codebase will need to be recompiled to take effect.
--  
-- We should store SQL code in the database, where it belongs; inside a Stored Procedure or Function.
--
-- Advantages of using Data Procedures:
--   Store and organise SQL;
--   Faster execution;
--   Data Security, e.g., it can prevent some users from deleting data.
