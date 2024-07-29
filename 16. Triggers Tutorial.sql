-- triggers 

SELECT 
    *
FROM
    employee_demographics;

SELECT 
    *
FROM
    employee_salary;


Delimiter $$
Create trigger employee_insert
	after insert on employee_salary
    for each row
begin 
	insert into employee_demographics (employee_id,first_name,last_name)
    values (new.employee_id, new.first_name,new.last_name);
END$$
Delimiter ;

Insert into employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
values ('13', 'Max','stan','data analyst','600000','6');



DELIMITER $$

Create trigger employee_insert2
	after insert on employee_demographics
    for each row 
    
BEGIN
	insert into employee_salary (employee_id, first_name,last_name)
    values (new.employee_id, new.first_name,new.last_name);
END $$
DELIMITER ;

insert into employee_demographics (employee_id, first_name, last_name, age, gender,birth_date)
values ('14','Michal','Obama','70','female','1964-01-17' );

-- above will not work because we have already created the trigger in database;




















