SELECT * FROM bank_db.transaction;
select avg(amount) from transaction;

select *
  from transaction
 where amount > (select avg(amount) from transaction);