# 6.2 Subqueries - part 2 - Task

-- In sql_hr
-- 	Find employees whose earnings are more than average

USE sql_hr;

SELECT * 
FROM employees
WHERE salary > (
	SELECT avg(salary)
    FROM employees
);
