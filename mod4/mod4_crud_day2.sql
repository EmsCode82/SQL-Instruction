Select * from customer;
  
 UPDATE Customer
    SET name = 'ABC Supplier'
    Where id = 8;

delete from customer
 where id = 8;
 
delete from customer
 where id >= 8;
  
Insert into customer (name, city, state, iscorpacct, creditLimit, active)
 Values ('Titan LLC', 'Cincinnati', 'OH', 1, 1000000, 1); 
 
 Insert into customer (id, name, city, state, iscorpacct, creditLimit, active)
 Values (1000,'Pluto', 'Cincinnati', 'OH', 1, 1000000, 1);