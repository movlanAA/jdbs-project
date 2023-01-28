select * from employees;

--find the 3rd maximum salary from the employees table (do not  include duplicates)
-- first sort salaries in desc without duplicate
select distinct salary from employees order by salary desc;
select distinct FIRST_NAME from EMPLOYEES order by FIRST_NAME desc ;

-- get me 3rd max salary
select min(salary) from (select distinct salary from employees order by salary desc)
where rownum<4;

-- get me information who is getting 3rd highest salary
select * from EMPLOYEES
where SALARY=(select min(salary) from (select distinct salary from employees order by salary desc)
              where rownum<4);



--find the 3th minimum salary from the employees table (do not include duplicates)
select salary from employees;
-- first sort salaries in asc without duplicate
select distinct SALARY from EMPLOYEES order by salary asc;

-- get me 3rd min salary
select max(salary) from (select distinct SALARY from EMPLOYEES order by salary asc)
where rownum<4;

-- get me information who is getting 3rd lowest salary
select * from EMPLOYEES
where SALARY=(select max(salary) from (select distinct SALARY from EMPLOYEES order by salary asc)
              where rownum<4);

select * from DEPARTMENTS;