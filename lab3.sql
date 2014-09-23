select name,city
from agents
where name= 'Bond';

select pid,name,quantity
from products
where priceUSD > .99;

select ordno,qty
from orders;

select name,city
from customers
where city ='Duluth';

select name
from agents
where city != 'New York' AND city != 'London'  ;

select *
from products
where city != 'Dallas' AND city != 'Duluth' AND priceUSD < 1;

select *
from orders
where mon = 'jan' OR mon = 'apr';

select *
from orders
where mon = 'feb' AND dollars > 200;


select *
from customers
where cid = 'c005';