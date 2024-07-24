# 5.2 GROUP BY clause - task

# Use the 'payments' table;
# Grouping using multiple columns;
# Columns: date, payment_method, total_payments;
# Total_payments for each date/payment_method combination;

SELECT 
	p.date,
    pm.name AS payment_method,
    SUM(p.amount) AS total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY p.date, payment_method
ORDER BY p.date