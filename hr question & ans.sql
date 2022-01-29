use hr;



select DISTINCT department_id from employees;


select * from employees
ORDER BY first_name DESC;


select first_name, last_name , salary*.15 PF 
FROM employees;


SELECT employee_id, first_name, last_name, salary 
    FROM employees 
    ORDER BY salary;
    
    
    
    SELECT sum(salary) as "Total salary"   FROM employees;
    
    
    
    SELECT MAX(salary), MIN(salary) 
     FROM employees;
     
     
     
     SELECT AVG(salary), COUNT(*) 
     FROM employees;
     
     
     
     SELECT COUNT(*) 
    FROM employees;
    
    
    SELECT COUNT(DISTINCT job_id) 
FROM employees;


SELECT UPPER(first_name) 
   FROM employees;
   
   
   SELECT SUBSTRING(first_name,1,3) 
     FROM employees;
     
     
     SELECT TRIM(first_name) 
    FROM employees;
    
    
    
    SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)  as "length of name"
    FROM employees;
    
    
    SELECT * 
   FROM employees 
   WHERE  first_name REGEXP  '[0-9]';



SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;



SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY  department_id  ASC;



 select first_name, last_name, salary 
from employees 
where department_id in (30, 100)
and salary not between 10000 and 15000;




 select concat(first_name,' ',last_name)  "Name", hire_date from employees where hire_date like "%1987%";


 select first_name from employees
 where first_name like "%b%" and first_name like "%c%";    
 
 
 
 select last_name, job_id, salary 
from employees 
where job_id = 'IT_PROG' 
or job_id = 'SH_CLERK' 
and salary not in (4500, 10000, 15000)


select last_name from employees where length(last_name) = 6;


 select last_name from employees where last_name like'__e%';
 
 
 
 SELECT job_id, GROUP_CONCAT(employee_id, ' ')  'Employees ID' 
FROM employees GROUP BY job_id;



UPDATE employees 
SET phone_number = REPLACE(phone_number, '124', '999') 
WHERE phone_number LIKE '%124%';

update  employees
set phone_number = replace(phone_number, '124', '999')
where phone_number like '124%';



SELECT * FROM employees
WHERE LENGTH(first_name) >= 8;


UPDATE employees SET email = CONCAT(email, '@example.com');



SELECT RIGHT(phone_number, 4) as 'Ph.No.' FROM employees;



SELECT location_id, street_address, 
SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address,',',' '),')',' '),'(',' '),' ',-1) 
AS 'Last--word-of-street_address' 
FROM locations;



SELECT * FROM locations
WHERE LENGTH(street_address) <= (SELECT  MIN(LENGTH(street_address)) 
FROM locations);



SELECT job_title, SUBSTR(job_title,1, INSTR(job_title, ' ')-1) as "contains"
FROM jobs;



SELECT first_name, last_name FROM employees WHERE INSTR(last_name,'C') > 2;



SELECT first_name "Name",
LENGTH(first_name) "Length"
FROM employees
WHERE first_name LIKE 'J%'
OR first_name LIKE 'M%'
OR first_name LIKE 'A%'
ORDER BY first_name ;




SELECT first_name,
LPAD(salary, 10, '$') SALARY
FROM employees;




SELECT left(first_name, 8),
REPEAT('$', FLOOR(salary/1000)) 
'SALARY($)', salary
FROM employees
ORDER BY salary DESC;



SELECT employee_id,first_name,last_name,hire_date 
FROM employees 
WHERE POSITION("07" IN DATE_FORMAT(hire_date, '%d %m %Y'))>0;


