SELECT * FROM 
parks_and_recreation.employee_demographics;

-- Wrong Case of WHERE clause 
SELECT gender , AVG(age)
FROM parks_and_recreation.employee_demographics
-- Want AVG(age) > 40
WHERE AVG(age)  > 40
GROUP BY gender
; 

-- HAVING clause address this issue
SELECT gender , AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
-- Want AVG(age) > 40
HAVING AVG(age) > 40
; 


-- USING both is same query
SELECT occupation , AVG(salary) 
FROM parks_and_recreation.employee_salary
-- FILTER OUT MANGERIAL roles
WHERE occupation LIKE '%Manager%' 
GROUP BY occupation
HAVING AVG(salary) > 60000
;


 