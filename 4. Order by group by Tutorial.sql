-- Group by alter

SELECT *
FROM employee_demographics;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;


-- Order by 
-- in order character or integer are sorted in ascending or descending order

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC ;


SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;

-- if we want to do it column number then

SELECT *
FROM employee_demographics
ORDER BY 5,4 ;

-- but we don't use column number as it can cause chaos.








