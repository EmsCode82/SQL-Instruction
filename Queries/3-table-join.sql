Select actor.lastname, actor.firstName, movie.Title, credit.Role
from movie
join credit
	on movie.ID = credit.movieID
join actor 
	on credit.actorID = actor.ID ;