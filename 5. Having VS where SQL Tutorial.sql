-- having vs where

SELECT *
FROM employee_demographics;


SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT *
FROM employee_salary;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) >75000;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary) < 80000;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary) > 80000


