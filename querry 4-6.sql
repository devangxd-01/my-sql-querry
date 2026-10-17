--------------------------------------------------
-- Query 4: Count employees in each department
-- having more than 5 employees
--------------------------------------------------

SELECT department_id,
       COUNT(*) AS num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;


--------------------------------------------------
-- Query 5: Find employees who joined in the
-- last 6 months
--------------------------------------------------

SELECT *
FROM employees
WHERE join_date >= CURRENT_DATE - INTERVAL 6 MONTH;


--------------------------------------------------
-- Query 6: Get departments with no employees
--------------------------------------------------

SELECT d.department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
WHERE e.id IS NULL;