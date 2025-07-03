SELECT * 
FROM parks_and_recreation.employee_demographics;

-- SUBQUERIES

SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id 
    FROM employee_salary
    WHERE dept_id =1 
);

-- AVG SALARY OF ALL empy

SELECT first_name,
salary,
(
SELECT AVG(salary)
FROM  employee_salary
)
FROM employee_salary;


 