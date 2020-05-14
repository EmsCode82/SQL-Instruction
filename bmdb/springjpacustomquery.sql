Select * from movie;
SELECT * FROM moviegenre
where MovieID = 2;

select * from moviegenre mg
join movie m
on m.ID = mg.MovieId
join genre g
on g.ID = mg.GenreID
order by title;
