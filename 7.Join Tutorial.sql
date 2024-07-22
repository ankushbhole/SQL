-- Join

SELECT *
From employee_demographics;

select *
from employee_salary;

-- we gonna join two table using the similarities
select *
from employee_demographics
join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id;

-- here we can see that s.no 2 is missing from table because one of the table doesn't have 2 in it 

SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal. employee_id;
    


SELECT sal.employee_id, age, salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal. employee_id;
    


-- outer join

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal. employee_id;

SELECT *
FROM employee_demographics  AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal. employee_id;
    
-- Self join

SELECT emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_santa1,
emp2.last_name as last_name_santa1
FROM employee_salary emp1
JOIN employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
    
-- joining multiple table

SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
JOIN parks_departments AS dep
	on sal.dept_id = dep.department_id
;

SELECT *
FROM parks_departments
