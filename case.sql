SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT first_name,
last_name,
concat(first_name," ",last_name),
age,
CASE
	WHEN age<=30 THEN "YOUNG"
    WHEN age>50 THEN "OLD"
    WHEN age BETWEEN 31 AND 50 THEN "ADHER"
END as new_demo
FROM employee_demographics;

-- QEURY to increase pay

SELECT first_name,
last_name,
concat(first_name," ",last_name)as full_name,
sal.dept_id,
sal.salary,
dpt.department_name,
CASE 
	WHEN dpt.department_name = "FINANCE" THEN sal.salary +  sal.salary*0.1
    WHEN sal.salary > 50000 THEN sal.salary + sal.salary * 0.07
    WHEN sal.salary <= 50000 THEN sal.salary + sal.salary * 0.05
END AS new_salary

FROM employee_salary as sal
INNER JOIN parks_departments as dpt
 ON sal.dept_id = dpt.department_id