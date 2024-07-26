-- stored procedure

create procedure large_salary()
select *
from employee_salary
where salary >= 50000;

call large_salary()


DELIMITER $$
create procedure large_salary2()
Begin
	select *
	from employee_salary
	where salary >= 50000;
	SELECT 
    *
FROM
    employee_salary
WHERE
    salary > 10000;
end $$
DELIMITER ;
call large_salary2()



DELIMITER $$
create procedure large_salary_3(p_employee_id INT)
Begin 
	select *
	from employee_salary
    WHERE employee_id = p_employee_id;
end $$
DELIMITER ;

call large_salary_3(1);
call large_salary_3(2);
call large_salary_3(3);
call large_salary_3(4);

