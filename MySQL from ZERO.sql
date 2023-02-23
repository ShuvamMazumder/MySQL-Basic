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














