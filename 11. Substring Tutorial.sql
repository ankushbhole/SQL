-- Subqueries

SELECT 
    *
FROM
    employee_demographics
WHERE
    employee_id IN (SELECT 
            employee_id
        FROM
            employee_salary
        WHERE
            dept_id = 1)
;




SELECT 
    first_name,
    salary,
    (SELECT 
            AVG(salary)
        FROM
            employee_salary) AS Average
FROM
    employee_salary
GROUP BY first_name , salary;




SELECT 
    gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM
    employee_demographics
GROUP BY gender;



SELECT 
    gender, avg_age, max_age, min_age
FROM
    (SELECT 
        gender,
            AVG(age) AS avg_age,
            MAX(age) AS max_age,
            MIN(age) AS min_age,
            COUNT(age)
    FROM
        employee_demographics
    GROUP BY gender) AS agg_table;