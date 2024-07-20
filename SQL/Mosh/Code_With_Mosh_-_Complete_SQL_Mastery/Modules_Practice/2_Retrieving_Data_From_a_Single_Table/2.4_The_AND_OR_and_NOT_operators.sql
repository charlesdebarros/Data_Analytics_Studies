# 2.4 The AND, OR, and NOT Operators

-- Combining multiple search conditions
-- AND has higher precedence, i.e., it is always evaluated first. Even it it comes at the end of the conditional clause.
-- Use ( ) to change the conditionals precedence.

USE sql_store;

-- AND and OR
SELECT *
FROM customers
-- WHERE birth_date > '1990-01-01' AND points > 1000;
-- WHERE birth_date > '1990-01-01' OR points > 1000;
-- WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA';  # is not the same as...
WHERE birth_date > '1990-01-01' OR 
	  (points > 1000 AND state = 'VA');

-- NOT
SELECT * 
FROM customers
-- WHERE NOT birth_date > '1990-01-01' OR points > 1000;  # Negates just the first conditional
-- WHERE NOT (birth_date > '1990-01-01' OR points > 1000);  # Negates both conditionals
WHERE birth_date <= '1990-01-01' AND points < 1000;  # The same as above but without the negation. Easier to understand than a NOT clause.
      