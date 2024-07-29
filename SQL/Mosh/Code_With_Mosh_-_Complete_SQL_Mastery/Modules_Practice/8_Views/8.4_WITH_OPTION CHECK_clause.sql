# 8.4 the WITH OPTION CHECK clause

-- Sometimes, when updating a VIEW, a column might disappear depending on the conditions set
-- for example, if a invoice_total has been paid, do not display that row anymore.
-- If we want or need to keep that row, even after the conditions are met, we need to 
-- add a WITH OPTION CHECK clause at the end of the query that created the view. 
-- If the row modified, in any way, will not longer show in the VIEW, an error will be raised.
-- And the row will not be modified. 

SELECT *
FROM sql_invoicing.invoices_with_balance;

UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3;  # An error will occur

SELECT *
FROM sql_invoicing.invoices_with_balance;
