-- Zain Qayyum lab 4
-- Part 1
Select distinct
city
from 
Agents
where aid in
 (
select 
aid
from 
Orders
where 
cid ='c001'
);
-- Part 2
Select distinct 
pid
from 
Orders
where cid in
(
select 
cid
from 
Customers
where 
city ='Kyoto'
)
order by pid asc;
-- Part 3
Select distinct
cid,name 
from 
Customers
where cid not in (
select
cid
from Orders
where aid ='a04'
);
-- Part 4
Select distinct
cid,name 
from
Customers
where cid in(
select
cid
from
orders
where
pid ='p01' or pid='p07')
;
-- Part 5
Select
pid
from 
Orders
where cid in(
select
cid
from
orders
where aid ='a04');
-- Part 6
select name,discount
from customers
where cid in (
select cid
from orders
where aid in(
select aid from agents
where city = 'Dallas'
or city = 'Newark'))
order by cid asc;
-- Part 7
select * from Customers
where  discount in (
      select discount from Customers
      where city = 'Dallas' or city = 'Kyoto');

