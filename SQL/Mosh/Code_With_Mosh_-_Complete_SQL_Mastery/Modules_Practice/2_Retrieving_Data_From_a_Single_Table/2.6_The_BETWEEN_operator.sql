# 2.6 The BETWEEN operator

USE sql_store;

SELECT * FROM customers
WHERE points BETWEEN 1000 AND 3000;  # The same as points >= 1000 AND points <= 3000. BETWEEN is inclusive.