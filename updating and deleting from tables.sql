use cmp_jaclark;
select * from employees;
/* So far we have:
- created a database
- created a table
- inserted into tables
- selected from a single table */
-- Now, we will look at updates and deletes (Task 44)
update employees set hourly_pay = 999.99 where employee_id = 4;

-- update multiple fields for an employees
update employees set last_name = "preist", hourly_pay = 999.99 where employee_id=1;

-- set a field to null
update employees set first_name = "LeBraune", last_name = null where employee_id = 1;

-- update all hourly pays
update employees set hourly_pay = 55.01 where employee_id <> 3;
update employees set hourly_pay = 55.01;

-- delete a record from our table
delete from employees where employee_id = 3;
-- careful, don't delete everything

start transaction;
delete from employees;
rollback; -- if we wanted to keep it, we'd say commit;
-- by default, MySQL auto-commits everything.
-- disable auto commit

set autocommit = off;
/* this wil allow us to review our changes, before saving */
delete from employees where last_name = "Klins";
rollback;

delete from employees where last_name = "Klins";
commit;
rollback; -- doesn't work after commit

set autocommit = on;
