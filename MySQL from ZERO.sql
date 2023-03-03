CREATE DATABASE myDB;
use myDB;
alter database mydb read only =0;
drop database mydb;

create table employees(
		employee_id int,
        first_name varchar(50),
        last_name varchar(50),
        hourly_pay decimal(5,2),
        hire_date date
);
select * from employees;

rename table employees to employee_details;
rename table employee_details to employees;

alter table employees
add phone_number varchar(15);

alter table employees
rename column phone_number to email;

alter table employees
modify column email varchar(100);

alter table employees
modify email varchar(100)
after last_name;

alter table employees
drop column email;

insert into employees
values (1,'shuvam','mazumder',5,'2022-5-5');

insert into employees 
values  (2,'tom','grey',5.6,'2020-6-6'),
		(3,'janina','grey',6,'2020-6-6'),
        (4,'asdlkf','grey',6,'2020-6-6'),
        (5,'sandy','grey',5,'2020-6-6');

-- missing data insert
insert into employees (employee_id,first_name,last_name)
values (6,'sheldon','han');

update employees
set hourly_pay = 10
where employee_id = 6;

set autocommit = off;

create table test (
	my_date date,
    my_time time,
    my_datetime datetime
);
select * from test;

insert into test
values (current_date(),current_time(),now());

create table products(
	product_id int,
    product_name varchar(25),
	price decimal(4,2)
);

select * from products;

insert into products 
values (100,'hamburger',3.99),
		(101,'fries',19),
		(102,'cola',25);








