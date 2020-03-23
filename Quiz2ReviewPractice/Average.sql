select PName, Price
from Product
group by Price
having avg(Price) > '20';