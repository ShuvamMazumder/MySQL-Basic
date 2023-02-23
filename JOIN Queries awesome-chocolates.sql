-- sales data from person names

select * from sales;
select * from people;

select  s.SaleDate, s.Amount, p.Salesperson, s.SPID, p.SPID
from sales s
join people p on p.SPID = s.SPID;

select * from sales;
select * from products;

-- left join

select s.SaleDate,s.Amount,pr.product
from sales s
left join products pr on s.PID = pr.PID;

-- 4(all) Table join
select s.Amount,pr.product,p.Salesperson,g.Region
from sales s
join products pr on s.PID = pr.PID
join people p on s.SPID = p.SPID
join geo g on g.GeoID = s.GeoID;

-- Conditions in join
select s.Amount,pr.product,p.Salesperson,g.Region,g.Geo
from sales s
join products pr on s.PID = pr.PID
join people p on s.SPID = p.SPID
join geo g on g.GeoID = s.GeoID
where s.Amount < 500
and g.Geo in ('USA')
and g.Region = 'Americas';





















