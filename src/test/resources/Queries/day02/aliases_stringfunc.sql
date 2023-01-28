select  * from employees;

/*
 1.Column aliases --> it is temporary name to show in display
 2.Table aliases ---> before JOINS
 NOTE --> We are just displaying and nothing will change in DB
 */


select FIRST_NAME from EMPLOYEES;

-- It makes column name UPPERCASE to show in display.We CANT give any space too
select FIRST_NAME as given_name from EMPLOYEES;
-- it will show column as it is.Also we can give space too
select FIRST_NAME as "given name" from EMPLOYEES;

-- display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY*12  from EMPLOYEES;

select FIRST_NAME, SALARY*12 as annual_salary from EMPLOYEES;

select FIRST_NAME, SALARY*30 as monthly_salary from EMPLOYEES;
/*
 STRING FUNCTIONS
    -- CONCAT
    -- Java--> + --->     firstname+" "+lastname
    -- SQL --> || -->     firsname||' '||lastname
 */

-- Add email to @gmail domain for all employees and show column name as full_email
select * from EMPLOYEES;  --> SKING@gmail.com

select EMAIL||'@gmail.com' as full_email from EMPLOYEES;

-- CONCAT (value1 ,value2)
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

select concat('Cydeo ',concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;
