-- Tables:
-- Tables are made up of rows and columns - kind of like spreadsheets
-- Each row is a record - contains information about a single object (eg. one employee)
-- Each column is a type of data (eg. name, date, pay)

create table employees (
	employee_id INT,
    first_name varchar(50), /* we want this to be a string, but SQL has 2 text types: char and varchar */
    last_name varchar(50),
    hourly_pay decimal(5,2), -- The 5 represents num of digits, 2 represents places to the right of the decimal -999.99 to 999.99
    hire_date date
)

-- take a look at our table:
select * from employees;

-- insert a record to see what it looks like:
insert into employees values (0, "Mister", "Klins", 1.18, "2025-10-14");

-- renaming the table:
rename table employees to suckas;
rename table suckas to emplyees;

-- altering a table to have another column
alter table employees add phone_number varchar(15);

-- alter column name
alter table employees rename column phone_number to email;


-- change a columns datatype
alter table employees modify column email varchar(100);

-- moving a columns position
alter table employees modify column email varchar(100) after last_name;

-- renove a column
alter table employees drop column email;