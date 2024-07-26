-- Temporary tables
-- temp table
-- Varchar is a datatype in SQL that holds characters of variable length. 
-- This data type stores character strings of up to 255 bytes in a variable-length field. 
-- The data can consist of letters, numbers, and symbols.

create temporary table temp_table
(
	first_name varchar(50),
    last_name varchar(50),
    favorite_food varchar(100)
);
select *
from temp_table;

insert into temp_table
values('ankush', 'bhole', 'paneer');

insert into temp_table
values( 'rahul','mishra','chicken' ); 

select *
from temp_table;

select *
from employee_salary;

create temporary table salary_70
select *
from employee_salary
where salary > 70000;

select *
from salary_70











