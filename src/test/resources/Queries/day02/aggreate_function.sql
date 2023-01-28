select *from employees;

/*
 AGGREATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS
- count  --> it will count rows
- max    --> it will max value
- min    --> it will min value
- sum    --> it will give total value
- avg    --> it will give average values
 Aggreate functions takes multi row and return one result
 NOTE --> All aggreate function will ignore NULL values
 */

-- How many departments we have ?
select * from departments;
select count(*) from departments;

-- How many locations we have ?
select * from locations;
select count(*) from LOCATIONS;


-- NULL VALUES
select * from employees;

-- count(*) will count all rows after execution that why we have result as 1
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null;   --She is Kimberly

-- count(DEPARTMENT_ID) will count only department IDs  after execution we have only one department ID which null
-- Since all aggreagate functions ignore NULL values it will give result as 0
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null;   --She is Kimberly



-- BOTH EXECUTION will give same result since we dont have any null values for department ID
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is  not null;

select count(*) from EMPLOYEES
where DEPARTMENT_ID is  not null;


-- how many different firstname we have ?
select count(distinct FIRST_NAME) from EMPLOYEES;

-- how many employees working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


-- how many employees getting salary more than 6000
select count(*) from EMPLOYEES
where SALARY>6000;

-- MAX--
select FIRST_NAME,salary from EMPLOYEES;
select max(salary) from EMPLOYEES;


-- MIN--
select min(salary) from EMPLOYEES;

-- AVG--
select avg(salary) from EMPLOYEES;

select round(avg(salary)) from EMPLOYEES;
select round(avg(salary),1) from EMPLOYEES;
select round(avg(salary),2) from EMPLOYEES;
select round(avg(salary),3) from EMPLOYEES;

-- SUM --
select sum(salary) from EMPLOYEES;