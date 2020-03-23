select PName, Price
from Product
group by Price
having count(Price) = 2;