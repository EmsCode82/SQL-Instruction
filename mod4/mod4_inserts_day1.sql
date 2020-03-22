-- insert one row, inc. id
Select * from customer;
INSERT INTO customer
(id, name, city, state, isCorpAcct,
 creditLimit, active)
VALUES 
  (8, 'Test1', 'Cinci', 'OH', 0, 10000000,1);

-- insert one row, no id 
INSERT INTO customer
(name, city, state, isCorpAcct,
 creditLimit, active)
VALUES 
  ('Test2', 'Cinci', 'OH', 0, 1000000,1);
  
  -- insert multiple rows
  INSERT INTO customer
   VALUES
   (10,'Test3', 'Cinci', 'OH', 0, 1000000,1),
   (11,'Test4', 'Cinci', 'OH', 0, 1000000,1),
   (12,'Test5', 'Cinci', 'OH', 0, 1000000,1);
   
 
   