# Correlated Subqueries
# Correlated queries can be very slow as they run on FOR EACH column.
-- Select employees whose salary is above the average in their office

USE sql_hr;

SELECT 
	office_id,
	employee_id,
	salary
FROM employees e
WHERE salary > (
	SELECT AVG(salary)
	FROM employees
    WHERE office_id = e.office_id
)