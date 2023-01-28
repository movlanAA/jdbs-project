select * from employees;
/*
 LIKE
    - Percent ( % ) for matching any sequence of characters. (0 or more )
    - Underscore ( _ ) for matching any single character.
    - contains
    - startswith
    - endswith
 */

-- display all employees where first_name startswith B
select * from EMPLOYEES
where first_name like 'B%';

-- WRONG LOGIC
select * from EMPLOYEES
where first_name like 'B_';  --> it says give all info name starts with B and length is 2

-- display all employees where first_name startswith B and lenght of it 5 letter
select * from EMPLOYEES
where first_name like 'B____';


-- display 5 letter first names from employees  where middle char is z
select * from employees
WHERE FIRST_NAME like '__z__';

-- NOTE ---> Values are CASE SENSITIVE
---> KEYWORDs/TABLEs/COLUMNs  are NOT CASE SENSITIVE


-- display 5 letter first names from employees ending with e
select * from EMPLOYEES
where FIRST_NAME like '____e';

-- it gives all firstnames ending with e
select * from EMPLOYEES
where FIRST_NAME like '%e';


-- display firstnames where second letter is a
select first_name from EMPLOYEES
where FIRST_NAME like '_a%';

-- display all employees where job id contains IT
select * from EMPLOYEES
where JOB_ID like '%IT%';

-- display all information where firstname startswith H and ending with l
select * from EMPLOYEES
where FIRST_NAME like 'H%l';
