-- The IF Function
-- Reference -> https://dev.mysql.com/doc/refman/8.3/en/flow-control-functions.html

-- IF(expr1,expr2,expr3)
-- If expr1 is TRUE (expr1 <> 0 and expr1 IS NOT NULL), IF() returns expr2. Otherwise, it returns expr3.
-- Note:
-- There is also an IF statement, which differs from the IF() function described here. See Section 15.6.5.2, “IF Statement”
-- See -> https://dev.mysql.com/doc/refman/8.3/en/if.html.

-- Classify orders into 'active' and 'archived' categories. This was previously done using the UNION operator.
-- The same result can be achieved using the IF() function.

SELECT 
	order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category
FROM sql_store.orders;