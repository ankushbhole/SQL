-- case statements

SELECT *
FROM employee_demographics;


SELECT first_name,
last_name,
age,
CASE 
WHEN age > 40 THEN 'OLD'
WHEN age < 40 THEN 'Young'
END AS 'Label'
FROM employee_demographics;



-- pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10 % bonus

SELECT first_name,
last_name, 
occupation, dept_id,
salary,
CASE 
WHEN salary > 50000 THEN salary + (salary * '0.07')
WHEN salary < 50000 THEN salary * 1.05
END AS 'Increment',
CASE
 WHEN dept_id = 6 THEN salary * 0.10
END AS 'BONUS'

FROM employee_salary;

select *
from employee_salary;

select *
from parks_departments;
