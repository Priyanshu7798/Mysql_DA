SELECT * 
FROM parks_and_recreation.employee_salary;


-- WINDOW function
SELECT gender , AVG(salary) as avg_sal
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
Group BY gender;

SELECT gender , AVG(salary) OVER()
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
-- this give avg of both male and female


SELECT gender , AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
-- THIS Gives the avg of male and female seperately

SELECT dem .first_name,dem.last_name , gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
 
 
-- ROLLING TOTAL but gives net amount for whole department
SELECT dem .first_name,dem.last_name , gender, salary,
AVG(salary) OVER(PARTITION BY gender) as avg_sal,
SUM(salary) OVER(PARTITION BY gender) as Rolling_Total
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
 
-- ROLLING TOTAL gives addition at specific index too net amount for whole department
SELECT dem .first_name,dem.last_name , gender, salary,
AVG(salary) OVER(PARTITION BY gender) as avg_sal,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) as Rolling_Total
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
    
-- ROW_NUMBER 
SELECT dem.first_name , dem.last_name ,gender , salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS Row_Num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_row,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_row
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
    