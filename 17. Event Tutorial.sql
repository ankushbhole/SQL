-- events

select*
from employee_demographics;

Delimiter $$

create event delete_retiree
on schedule every 30 second
do
BEGIN
	delete
    from employee_demographics
    where age >= 60 ;
END $$

DELIMITER ;

show variables like  'event%'
    