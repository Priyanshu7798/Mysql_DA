SELECT * 
FROM parks_and_recreation.employee_demographics
;

SELECT * 
FROM parks_and_recreation.employee_salary
;

-- JOIN 


 --  INNER JOIN
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id , dem.first_name, dem.last_name , occupation , salary
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN

-- LEFT JOIN  same as Inner JOIN
SELECT dem.employee_id , dem.first_name, dem.last_name , occupation , salary
FROM parks_and_recreation.employee_demographics as dem
LEFT JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- RIGHT JOIN
SELECT sal.employee_id , sal.first_name, sal.last_name , occupation , salary
FROM parks_and_recreation.employee_demographics as dem
RIGHT JOIN parks_and_recreation.employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- SELF JOIN
SELECT *
FROM employee_demographics AS emp1
INNER JOIN employee_demographics AS emp2
	ON emp1.employee_id + 2 = emp2.employee_id
;

SELECT *
FROM parks_departments
;
-- JOINING MULTIPLE TABLE TOGETHER 
SELECT sal.employee_id,
sal.first_name, sal.last_name , salary , occupation , dept_id ,department_name
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as dep
	ON sal.dept_id = dep.department_id
;
