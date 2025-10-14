-- DBMS - Database Management System (eg. MySQL server)

-- Create a database:
create database cmp_jaclark;
-- tell mysql the default db.
use cmp_jaclark;

-- deleting (dropping) a database: 
-- drop database cmp_jaclark;

-- altering a databse to make it read only
alter database cmp_jaclark read only = 1;
-- cant drop a read only mode
alter database cmp_jaclark read only = 0;
-- can now drop the read only