# Self Outer Joins

-- An OUTER join within the same table
-- Similar to an SELF INNER join but an SELF OUTER join will also display NULL value

USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    e.last_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;