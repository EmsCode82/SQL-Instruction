SELECT * FROM bank_db.transaction;
select avg(amount) from transaction;

select *
  from transaction
 where amount > (select avg(amount) from transaction);
 
 select distinct (accountid) from transaction;
 select distinct (txntype) from transaction