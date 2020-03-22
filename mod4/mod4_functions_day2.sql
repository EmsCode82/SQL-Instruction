select * from customer;

select sum(creditLimit) from customer;

select * from customer;

select concat('$',format(avg(creditLimit),2)) 
  from customer;
  
  select state, concat('$',format(sum(creditLimit),2)) as 'total credit limit' 
  from customer
  group by state
  having sum(creditLimit) > 500000
  order by state;
  
  select * from customer;
  select count(*) from customer;
  select max(creditLimit) from customer;
  