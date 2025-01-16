-- SELF JOIN (Two or more columns should have similar kind of values)
-- To display each employee and their manager from the same table

USE sql_hr;

SELECT e.employee_id, e.first_name AS employee, m.first_name AS manager
FROM employees e  -- e refers 'employees'
JOIN employees m  -- m refers 'manager'
    ON e.reports_to = m.employee_id

-- here you have to use different Aliases while joining the same table
-- and prefix each column with an Alias in SELECT statement
