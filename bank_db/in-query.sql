SELECT * FROM transaction;
select avg(amount) from transaction;

select *
  from transaction
 where amount > (select avg(amount) from transaction);
 
 select distinct (accountid) from transaction;
 select distinct (txntype) from transaction;
 
 select * from account
  where id in (2, 3, 4)