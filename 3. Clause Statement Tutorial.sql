# Where Clause 

SELECT *
FROM employee_salary
WHERE first_name = 'Tom';


SELECT *
FROM employee_salary
WHERE salary >= '50000';

SELECT *
FROM employee_demographics
WHERE gender = 'female';

SELECT *
FROM employee_demographics
WHERE gender != 'female';

#here we have used ! it means not equal

-- AND OR NOT are logical operator 

SELECT *
FROM employee_demographics
WHERE age > '40'
AND gender = 'male';

SELECT *
FROM employee_demographics
WHERE age > '40'
OR gender = 'male';

SELECT *
FROM employee_demographics
WHERE age > '40'
OR NOT gender = 'male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Tom' AND age = 36) OR gender = 'male' ;

-- LIKE statement 
-- % and _

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'T%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a_%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';
