select GeoID, sum(Amount), avg(Amount), sum(Boxes)
from sales
group by GeoID;


select Geo, sum(Amount), avg(Amount), sum(Boxes)
from sales s
join geo g on s.GeoID = g.GeoID
group by Geo;
