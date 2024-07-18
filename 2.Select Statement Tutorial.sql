SELECT *
FROM Parks_and_Recreation.employee_demographics;
 
SELECT first_name,
last_name,
age,
(age + 10) * 10 + 10
FROM Parks_and_Recreation.employee_demographics;

#PEMDAS any rule of math in SQL is done using PEMDAS

 SELECT distinct gender
 FROM Parks_and_Recreation.employee_demographics;


