use cmp_jaclark;
-- inserting into a table:

-- default approach (when you have all data)

insert into employees values (1, "james", "clark", 6.70, "2025-06-07") on duplicate key update employee_id = employee_id;

select * from employees;
INSERT INTO employees VALUES
(2, "dakota", "kuhn", 67.67, "2025-06-08"),
(3, "noah", "prest", 5.67, "2025-06-09"),
(4, "thomas", "carpenter", 8.67, "2025-06-10") on duplicate key update employee_id = employee_id;
-- inserting multiple rows at once
select * from employees;

-- what happens if we don't have all the data
-- insert into employees values (5, "jordan", "klemm"); -- Error: Column count doesn't match value count

-- inserting only some columns
insert into employees (employee_id, first_name, last_name) values (5, "jordan", "klemm");

-- inserting in a different order
insert into employees (last_name, first_name, employee_id, hourly_pay) values ("stempka", "william", 6, 11.00) on duplicate key update employee_id = employee__id;

update employees set hourly_pay = .67 where employee_id = 4;

update employees set hourly_pay = .37 where first_name = "dakota";

update employees set hourly_pay = hourly_pay * .1 where employee_id != 0;

