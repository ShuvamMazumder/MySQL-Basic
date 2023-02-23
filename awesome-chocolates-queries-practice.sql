select * from sales;

select SaleDate, Amount, Customers, Boxes from sales;

select Amount, Boxes, Amount/Boxes as price from sales;

select Amount, Customers, Amount/Customers 'CAL2' from sales;

select * from sales
where Amount > 10000
order by Amount desc;

select * from sales
where geoid = 'g1'
order by PID, Amount;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01';

select Amount, saleDate from sales
where year(SaleDate) = 2022;

select * from sales
where boxes>0 and boxes<=50;

select * from sales
where boxes between 0 and 50;

-- can't understand this weekday part 
select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of Week'
from sales
where weekday(SaleDate) = 4;

select* from people;

select * from people
where Team = 'Delish' or Team = 'Jucies';

-- same as the previous query
select * from people
where team in ('Delish','Jucies');

-- pattern matching
select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

-- case operator
select SaleDate, Amount,
		case 	when amount < 1000 then 'under 1k'
				when amount < 5000 then 'under 5k'
				when amount < 10000 then 'under 10k'
		else'10k or more'
    end as 'amount catagory'
from sales;

