use cmp_jaclark;
/* Selext means: I want to get data 
 "*" means all columns
From employees means we are using the employees table*/
select * from employees; /* select all columns and rows */

/* Select specific columns */
select first_name, last_name from employees;

/* change how the columns are shown */
select first_name student_first_name, last_name student_last_name from employees;

/* filter results 
use the WHERE clause */
select first_name, last_name, employee_id from employees where employee_id = 1;

/* find someone by first name */
select * from employees where first_name  = "Noah";

select * from employees where hourly_pay > 1; -- comparisons: > < >=  both not equals: <> !=

/* find everyone hired before july 2024 */
select * from employees where hire_date <= "2025-06-09";

/* use not equals */
select * from employees where last_name <> "Klins";
select * from employees where last_name != "Klins";

/* dealing with nulls */
select * from employees where hire_date is Null;
select * from employees where hire_date is not Null;

/* mmultiple conditions - using and/or */
select * from employe where hourly_pay > 1 and hire_date is null;

select * from employees where hire_date is null or hire_date > "2025-10";

/* wildcards in text
find all employees whose first name starts with "J" */
select * from employees where first_name LIKE "j%"; -- notice "like" and the "%" (zero or many chars)

/* find all employees whose name ends in L */
select * from employees where last_name LIKE "%k";

/* find all employees whose last name starts with C and contains an E */
-- note, this could be expensive
select * from employees where last_name  LIKE "c%e%";

-- a couple more notes on LIKE
-- single character
-- find all employees whose name starts with any letter and then has "lins"
select * from employees where last_name like "_lins";