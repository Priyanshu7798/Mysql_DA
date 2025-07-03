-- WHERE Clause  

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;    


-- Logical operator AND OR NOT
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 50000 
AND dept_id = 1 
OR last_name = "Swanson"
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE (first_name = 'Craig') OR salary > 70000
AND NOT dept_id = null
;

-- LIKE operator more like filter 
-- % anything  _ specifc VALUES
Select *
FROM employee_salary
WHERE first_name LIKE "Jer%"  -- %er% 
;

Select *
FROM employee_salary
WHERE first_name LIKE "a___"
OR salary >= 50000
;



  