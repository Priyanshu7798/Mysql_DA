SELECT * 
FROM parks_and_recreation.employee_demographics;

-- STRING
SELECT length("PRIYANSHU") ;

SELECT first_name , LENGTH(first_name) AS length
FROM employee_demographics;

-- UPPER case LOWER case
SELECT first_name , upper(first_name) AS upper , last_name , lower(last_name) AS lower
FROM employee_demographics;

-- TRIM
SELECT trim("      TEST       ");
SELECT ltrim("      TEST       ");
SELECT rtrim("      TEST       ");


-- SUBSTRING
SELECT first_name , birth_date,
LEFT(first_name, 3) AS lstr,
RIGHT(first_name,3) as rstr,
substring(first_name , 3 , 2) as sub,
substring(birth_date,6,2) as birth_month
FROM employee_demographics; 

SELECT first_name , REPLACE(first_name, "a","z")
FROM employee_demographics;

SELECT locate("n", "priyanshu");

SELECT first_name , 
last_name , 
concat(first_name , " ", last_name) AS full_name
FROM employee_demographics