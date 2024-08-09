USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_clients;

DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_clients (
    client_id INT,
    OUT invoices_count INT,  # we need specify these are OUT values
    OUT invoices_total DECIMAL(9, 2)
)
BEGIN
    SELECT 
        COUNT(*), SUM(invoice_total)  # select these two values and assign them to 'invoices_count' and 'invoices_total'
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE 
        i.client_id = client_id AND
        payment_total = 0;
END $$

DELIMITER ;

-- SELECT 
--     COUNT(*),
--     SUM(invoice_total)
-- FROM invoices i
-- WHERE 
--     i.client_id = client_id AND
--     payment_total = 0;