SELECT * FROM orders;

SELECT name, date,total 
from orders as o
join customer as c
  on c.id = o.customerID
  order by name;