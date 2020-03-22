select Title, Year, Director
from Movie m
join Credit c
on c.Id = m.id