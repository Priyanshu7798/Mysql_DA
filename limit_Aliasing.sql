SELECT * 
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3
;

-- Give three oldest employee
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;

-- another use of limit to selcet a particular row
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1
-- return the 1 row from 2 index
;


-- ALIASING give name to the column

SELECT gender , AVG(age) as avg_age
FROM  parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;