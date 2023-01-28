select * from employees;

-- Task 1 :  How many employees working for each manager
select MANAGER_ID,count(*) as employees_count from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID;

-- lets order them based count desc
select MANAGER_ID,count(*) as employees_count from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
order by employees_count desc  ;

-- ignore manager id where employees count smaller 6
select MANAGER_ID,count(*) as employees_count from EMPLOYEES
where MANAGER_ID is not null  -- to ignore Steven King
group by MANAGER_ID
having count(*)>6
order by employees_count desc  ;



-- Task 2 :  How many locations we have  for each country
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID;

-- order them based country id in asc
select COUNTRY_ID,count(*) from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID ;

-- what if I want to see only US and CA
select COUNTRY_ID,count(*) from LOCATIONS
where COUNTRY_ID IN('US','CA','UK')
group by COUNTRY_ID
order by COUNTRY_ID;

-- display where location count is bigger than 2
select COUNTRY_ID,count(*) as location_count from LOCATIONS
where COUNTRY_ID IN('US','CA','UK')
group by COUNTRY_ID
having count(*)>2
order by COUNTRY_ID;


select * from LOCATIONS;




-- Task 3 :  Display all employees salary in following format as column name Employees Salary
--           Ex :
--                     Employees Salary
--   Steven makes 24000
--   Neena makes 17000

select FIRST_NAME,SALARY from EMPLOYEES;


select * from employees;

select FIRST_NAME||' makes '|| salary as Employees_Salary from EMPLOYEES;

select concat(concat(FIRST_NAME,' makes '),salary) as Employees_Salary from EMPLOYEES;