select PName, Price
from Product
group by Price
having sum(Price) < '20';