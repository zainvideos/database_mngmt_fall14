-- Zain Qayyum lab 4
-- Question 1
Select 
city
from 
Agents
where 
exists (
select 
aid
from 
Orders
where 
cid ='c001'
);
-- Question 2
Select 
pid
from 
Products
where 
exists (
select 
aid
from 
Orders
where 
cid ='c006'
);
