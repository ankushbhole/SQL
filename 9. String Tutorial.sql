-- string function
SELECT *
FROM employee_demographics;

SELECT LENGTH ('Skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- above is useful in data cleaning 

SELECT last_name, length(last_name)
FROM employee_demographics
ORDER BY 2;


-- upper
SELECT upper('MacBook');
-- Lower
SELECT lower('MACBOOK');


-- trim  removes unwanted space
SELECT ('           Macbook          ');
SELECT trim('           Macbook          ');
SELECT Rtrim('           Macbook          '); 
SELECT Ltrim('           Macbook          ');


-- substring
SELECT first_name,
LEFT (first_name, 4),
RIGHT (first_name,2),
SUBSTRING(first_name,2,3),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

SELECT *
FROM employee_demographics;

SELECT last_name,
LEFT (last_name,2),
RIGHT (last_name,3),
SUBSTRING(last_name,2,2),
birth_date,
SUBSTRING(birth_date,1,4) AS Birth_year
FROM employee_demographics;

-- REPLACE

select first_name,
REPLACE(first_name,'a','z' ),
locate('an',first_name)
from employee_demographics;

-- concat

SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;
