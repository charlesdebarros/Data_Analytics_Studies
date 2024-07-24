# 5.3 The HAVING clause

-- The HAVING clause is used to filter data AFTER the rows have been grouped
-- The WHERE clause is used to filter data BEFORE the rows have been grouped
-- The columns used with the HAVING clause, must be included in the SELECT clause 
-- Using a column not included in the SELECT clause will raise an error
-- On the other hand, we can use ANY column with the WHERE clause, regardless whether or not they have been included in the SELECT clause.

USE sql_invoicing;

SELECT 
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS invoice_count
FROM invoices
# WHERE total_sales > 500  -- We can filter the data with WHERE because the rows have not been grouped yet.
# Here we do not know yet the total_sales for each client. We need to use the HAVING clause.
GROUP BY client_id
HAVING total_sales > 500 AND invoice_count > 5;  -- we need to filter the data AFTER the rows have  been grouped.
# The columns used with HAVING need to be part of the SELECT clause.
# When using WHERE, such restriction does not exit. Any column can be referenced.