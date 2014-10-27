-- Zain Qayyum lab 5
-- Part 1
select city from Agents a
inner join Orders o
on o.aid = a.aid and o.cid='c001';

-- Part 2
select distinct pid from Orders o
inner join Customers c
on c.cid = o.cid and c.city ='Kyoto';

-- Part 3
select distinct name from Customers c
where cid not in (
select cid
from Orders
);

-- Part 4
select distinct name from Customers c
left outer join Orders o
on o.cid = c.cid where o.cid is null;

--Part 5
select distinct c.name, a.name from Customers c, Agents a, Orders o
where c.city = a.city and o.cid = c.cid and o.aid =a.aid;

--Part 6
select distinct c.name, a.name from Customers c, Agents a, Orders o
where c.city = a.city;

--Part 7
select c.name, c.city from Customers c
where c.city in (
      select city from Products
      group by city
      order by count(quantity) limit 1
      );
