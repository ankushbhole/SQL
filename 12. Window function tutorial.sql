-- Windows functions

SELECT 
    gender, AVG(salary) AS avg_salary
FROM
    employee_demographics AS dem
        JOIN
    employee_salary AS sal ON dem.employee_id = sal.employee_id
GROUP BY gender
;


Select avg(salary) over()
From employee_demographics as dem
Join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- partition fucntion
-- over(partition by ) 

Select dem.first_name, dem.last_name ,gender, avg(salary) over(partition by gender) as avg_sal
From employee_demographics as dem
Join employee_salary as sal
on dem.employee_id = sal.employee_id;



Select dem.first_name, dem.last_name ,gender, sum(salary) over(partition by gender) as sum_sal
From employee_demographics as dem
Join employee_salary as sal
on dem.employee_id = sal.employee_id;


Select dem.first_name, dem.last_name ,gender,salary, 
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
From employee_demographics as dem
Join employee_salary as sal
on dem.employee_id = sal.employee_id;


select dem.employee_id, dem.first_name,dem.last_name,gender,salary,
row_number () over(partition by gender order by salary desc) as 'number'
from employee_demographics as dem 
join employee_salary as sal
on dem.employee_id = sal.employee_id;



select dem.employee_id, dem.first_name,dem.last_name,gender,salary,
row_number () over(partition by gender order by salary desc) as 'row_no.',
RANK () over (partition by gender order by salary desc)as 'rank_no.',
dense_RANK () over (partition by gender order by salary desc)as ' desnse rank_no.'
from employee_demographics as dem 
join employee_salary as sal
on dem.employee_id = sal.employee_id

 