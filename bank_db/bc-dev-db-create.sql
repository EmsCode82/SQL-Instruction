-- create the database schema
drop database if exists bc_dev_db;
create database bc_dev_db;
use bc_dev_db;

-- create the table
create table Developer  (
emp_id         int             not null primary key auto_increment,
first_name     varchar(15)     not null,
last_name      varchar(15)     not null,
position       varchar(15)     not null,
start_date     date            not null default 0,
salary         int             not null default 0
);

 -- add data to table
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (1122, 'Alina', 'Ivannikov', 'developer 2',67750);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (1055, 'Andrew', 'Wansik', 'developer 1',59000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (2222, 'Christian', 'Hall', 'developer 4',95000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (8544, 'Dennis', 'Frey', 'developer 3',75000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (6789, 'Eric', 'Shepard', 'developer 2',65200);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (3222, 'Jacob', 'Pineault', 'developer 1',58500);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (4512, 'Jeff', 'Peters', 'developer 1',62000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (9632, 'Marcus', 'Crabtree', 'developer 3',82000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (1254, 'Nick', 'Renner', 'developer 2',68000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (2498, 'Sam', 'OConnell', 'developer 4',107500);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (5522, 'Sarah', 'Williamson', 'developer 5',125000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (6352, 'Trevor', 'Osborne', 'developer 3',83500);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (8574, 'Tyler', 'Stegman', 'developer 2',65000);
Insert into Developer (emp_id, first_name, last_name, position, salary)
values (1111, 'Sean', 'Blessing', 'Manager 2',120000);