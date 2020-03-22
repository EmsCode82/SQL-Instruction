SELECT * FROM transaction;
select avg(amount) from transaction;

select *
  from transaction
 where amount > (select avg(amount) from transaction);
 
-- use distinct
select distinct(txntype) from transaction;

select * from account
 where id in (2,3,4);
 
 select * from account
 where id > 1
   and id < 4;