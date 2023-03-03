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

select * from geo;

update geo
set region = 'America'
where GeoID = 'G2';

delete from geo
where GeoID = 'G2';

select * from people;
select team,location from people;
select distinct location from people;

select salesperson,location from people
where location = 'Hyderabad';

select team,salesperson,location from people
where location = 'Hyderabad' and team = 'Yummies'
order by Salesperson asc;

select * from customer;
select * from payment;

select upper(first_name),length(first_name),substring(first_name,2,4),now() from customer;

select concat(first_name,' ',last_name) from customer;

select replace(first_name,'Mary', 'Mari') from customer;

select count(customer_id) from customer;
select count(*) from customer;

select sum(amount) from payment;
select max(amount) from payment;
select min(amount) from payment;
select avg(amount) from payment;
select round(avg(amount),2) from payment;

select mode, sum(amount) as total
from payment
group by mode
order by total desc;

select mode, count(amount) as total
from payment
group by mode
having count(amount) >=2 and count(amount) <4 
order by total desc
limit 2;

show TIMEZONE;
select now();
select timeofday();
select current_date();
select current_time();


select extract(day from payment_date) as month, payment_date from payment;

select c.first_name,p.mode
from customer as c
inner join payment as p
on c.customer_id = p.customer_id;


select *
from payment as p
left join customer as c
on p.customer_id = c.customer_id;

select first_name
from customer
union 
select first_name
from payment;

select avg(amount) from payment;

select *
from payment
where amount > (select avg(amount) from payment);


select customer_id,amount,mode
from payment
where customer_id in (select customer_id from customer);

select customer_id,amount
from payment
where amount > 60;

select first_name,last_name
from customer c
where exists (	select *
				from payment p
				where p.customer_id = c.customer_id
                and amount > 60);


select customer_id,amount,
case 
	when amount > 60 then 'expensive'
	when amount <=60 then 'moderate'
    else 'free'
end as product_status
from payment;

select customer_id,
case amount
	when 50 then 'prime user'
	when 30 then 'plus user'
    else 'regular user'
end as customer_status
from payment;


















