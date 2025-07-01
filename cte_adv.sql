SELECT * 
FROM parks_and_recreation.employee_demographics;

-- CTE 

WITH CTE_EXAMPLES AS
(
SELECT gender , 
AVG(salary) AS avg_sal,
MAX(salary) AS max_sal,
MIN(salary) AS min_sal,
COUNT(salary) AS count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT gender , avg_sal,max_sal,min_sal,count_sal
FROM CTE_EXAMPLES ;



WITH CTE_tab1 AS
(
SELECT employee_id , birth_date
FROM employee_demographics
WHERE birth_date > "1977-01-01"
),
CTE_tab2 AS 
(
SELECT employee_id ,salary ,first_name
FROM employee_salary
WHERE salary > 50000
)
SELECT * 
FROM CTE_tab1 t1
JOIN CTE_tab2 t2
	ON t1.employee_id = t2.employee_id;
