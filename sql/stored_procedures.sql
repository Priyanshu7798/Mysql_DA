SELECT * 
FROM parks_and_recreation.employee_salary;

-- STORED Procedures

SELECT *
FROM employee_salary
WHERE salary >= 60000;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 60000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >=50000;
	SELECT *
	FROM employee_salary
	WHERE salary <= 70000;
END $$
DELIMITER ;

CALL large_salaries3();


-- PARAMETER for query  you want

DELIMITER $$
CREATE PROCEDURE param_tab(p_employee_id INT)
BEGIN
	SELECT salary , first_name
    FROM employee_salary
    WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ;

CALL param_tab(2);