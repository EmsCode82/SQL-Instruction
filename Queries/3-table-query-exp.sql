Select * from actor;
select * from movie;
select * from credit;

select title, year, role, concat(FirstName, " ", LastName) as 'actor' 
   from movie
   join credit
     on movie.id = credit.Movieid
   join actor
     on actor.ID = credit.ActorID;
     
select movie.title, movie.year, credit.role
  from movie
  left join credit
    on movie.ID = credit.MovieID