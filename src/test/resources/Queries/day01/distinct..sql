select * from employees;

/*
 it show different values from query result based provided column
 Original data still stays in database
 */

select FIRST_NAME from EMPLOYEES;
-- it returns  107

-- display all different names from employees
select distinct FIRST_NAME from EMPLOYEES;
-- it return 91 result as a different names

select distinct * from EMPLOYEES;
-- it will check each row to filter different columns --> * --> All columns


-- display different job_ids from jobs table
select JOB_ID from jobs;

select distinct JOB_ID from jobs;
-- NOTE --> since Job id is PK for JOBs table it will give same result with/out distinct


-- display different job_ids from employees table
select distinct job_id from employees;

--display different country ids from locations table
select distinct country_id from LOCATIONS;