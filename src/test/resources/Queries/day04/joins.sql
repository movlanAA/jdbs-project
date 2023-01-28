select * from EMPLOYEES;


select FIRST_NAME,LAST_NAME,ADDRESS,PHONE from ADDRESS inner join CUSTOMER on
    ADDRESS.ADDRESS_ID=CUSTOMER.ADDRESS_ID;


select * from CUSTOMER;
select * from ADDRESS;


-- Another Q --> What if I want to customer.address_id information too
select FIRST_NAME,LAST_NAME,CUSTOMER.ADDRESS_ID,ADDRESS.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS inner join CUSTOMER
                        on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;


-- Another Q --> Do I need to type table name always
-- ALIASES
-- Table Aliases
-- Customer  --> C
-- Employees --> E
-- Address   --> A

select FIRST_NAME,LAST_NAME,C.ADDRESS_ID,A.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A  inner join CUSTOMER C
                           on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 LEFT OUTER JOIN / LEFT JOIN
 -- it will give  matching part + unique for LEFT table
 -- The order of is important
 */
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS A
                                on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from ADDRESS A left outer join CUSTOMER C
                               on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 RIGHT OUTER JOIN / RIGHT JOIN
 -- it will give  matching part + unique for RIGHT table
 -- The order of is important
 */
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from customer c right outer join address a
                                 on c.ADDRESS_ID = a.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from address a right join CUSTOMER c
                          on a.ADDRESS_ID = c.ADDRESS_ID;



/*
 FULL OUTER JOIN / FULL JOIN
 -- It will all matching + unique for LEFT + unique for  RIGHT
 -- The order of tables does not matter
 */
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from address a full join CUSTOMER c
                         on a.ADDRESS_ID = c.ADDRESS_ID;



/*
 LEFT OUTER WITH WHERE
-- Get me unique part from LEFT table
NOTE --> if there is a customer with c.address_id 6 , there is no matching data from address table
         So it will assign as value for a.address_id as NULL
 That is why we are checking address.address_id IS NULL to make get ONLY unique data from left side
 */

SELECT customer_id, first_name, last_name, address, phone FROM customer
                                                                   LEFT OUTER JOIN address
                                                                                   ON customer.address_id = address.address_id
WHERE address.address_id IS NULL;