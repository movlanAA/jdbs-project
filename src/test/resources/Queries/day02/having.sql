select * from employees;

-- display jobids where their avg salary more than 5K
select JOB_ID,avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(salary)>5000
order by 2 desc;


-- display department id where employees count is bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5 ;

-- order themn based on number of employees in desc
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by 2 desc;



-- IQ --> display duplicate(more than one) firstnames from employees table
select first_name,count(*) from EMPLOYEES
group by first_name
having count(*)>1
order by 2 desc;
