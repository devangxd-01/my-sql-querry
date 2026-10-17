--------------------------------------------------
-- Query 1: Find Second Highest Salary
--------------------------------------------------

SELECT MAX(salary) AS SecondHighestSalary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

--------------------------------------------------
-- Query 2: Find Duplicate Names
--------------------------------------------------

SELECT name, COUNT(*) AS TotalCount
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;

--------------------------------------------------
-- Query 3: Employees Earning More Than Their Manager
--------------------------------------------------

SELECT
    e.name AS Employee,
    e.salary AS EmployeeSalary,
    m.name AS Manager,
    m.salary AS ManagerSalary
FROM employees e
JOIN employees m
ON e.manager_id = m.id
WHERE e.salary > m.salary;