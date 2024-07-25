-- CTE 

WITH CTE_example as
(
select gender, 
AVG(salary) avg_sal,
MAX(salary) max_sal,
min(salary) min_sal,
count(salary) count_sal
from employee_demographics as dem 
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender)
Select avg_sal, max_sal,gender 
from CTE_example;


WITH CTE_example AS
(
	SELECT employee_id, gender,birth_date
    from employee_demographics
    WHERE birth_date > '1985-01-01'
),
CTE_example2 AS
(
	SELECT employee_id,salary
    from employee_salary
    WHERE salary > 50000
) 
SELECT *
from CTE_example
Join CTE_example2 
	On CTE_example.employee_id = CTE_example2.employee_id;

















