select * from employees;


-- Task 1:display any job title information endswith Manager from jobs table
select * from jobs
where JOB_TITLE like '%Manager';


-- Task 4:display all Countries where Region_ID is 1 and Country_Name is not Belgium
select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME!='Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME<>'Belgium';

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME not in ('Belgium');
/*
 those 3 are same =! , <>, "not in"
 */


-- Task 2:display all employees except firstname is starting with D
select * from EMPLOYEES
where FIRST_NAME not like 'D%'
order by FIRST_NAME;


-- Task 3:display all employees except firstname is starting with D and has 5 letter
select * from EMPLOYEES
where FIRST_NAME not like 'D____'
order by FIRST_NAME;

-- count

select count(*) from EMPLOYEES
where FIRST_NAME not like 'D____'
order by FIRST_NAME;

