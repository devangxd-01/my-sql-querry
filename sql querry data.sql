-- Create Database
CREATE DATABASE company_db;

-- Use Database
USE company_db;

-- Create Employees Table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    manager_id INT
);

-- Insert Sample Data
INSERT INTO employees (id, name, salary, manager_id) VALUES
(1, 'Rahul', 80000, NULL),
(2, 'Amit', 50000, 1),
(3, 'Priya', 90000, 1),
(4, 'Neha', 60000, 2),
(5, 'Amit', 50000, 1),
(6, 'Rohit', 70000, 2);

-- Display All Records
SELECT * FROM employees;

