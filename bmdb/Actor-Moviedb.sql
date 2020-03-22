-- Drop and Create the Database, DDL

drop database if exists bm_db;
create database bm_db;
use bm_db;

-- DDL - Create Tables
create table Actor (
	ID 				int 			not null primary key auto_increment,
	FirstName 		varchar(50)		not null,
	LastName 		varchar(50)		not null,
	Gender 		    varchar(1) 	    not null,
	Birthdate 		date 			not null,
    CONSTRAINT unq_actor unique (FirstName, LastName, Birthdate)
	);
    
create table Movie  (
	id 				int 			primary key auto_increment,
	Title           varchar(197)    not null,
	Year 		    int         	not null,
	Rating 		    varchar(5) 	    not null,
	Director    	varchar(50) 	not null	
	);

create table Credit (
	id 				int 			not null primary key auto_increment,
	ActorID		    int 			not null,
	MovieID		    int 			not null,
	Role			varchar(50)     not null,
	FOREIGN KEY (ActorID) REFERENCES Actor(id),
	FOREIGN KEY (MovieID) REFERENCES Movie(id),
    CONSTRAINT act_movie unique (ActorID, MovieID)
    );
    
-- DML Insert Data

insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (1, 'Gerard', 'Butler', 'M', '1969-11-13');
insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (2, 'Lena', 'Headey', 'F', '1973-10-03');
insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (3, 'David', 'Wenham', 'M', '1965-09-21');
insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (4, 'Antonio', 'Banderas', 'M', '1960-09-10');
insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (5, 'Angelina', 'Jolie', 'F', '1975-06-04');
insert into Actor (id, Firstname, Lastname, Gender, Birthdate) 
	values (6, 'Thomas', 'Jane', 'M', '1969-02-22');
insert into Movie (id, Title, Year, Rating, Director)
	values (1, '300', '2006', 'R', 'Zach Snyder');
insert into Movie (id, Title, Year, Rating, Director)
	values (2, 'Original Sin', '2001', 'R', 'Michael Cristofer');
insert into Credit (ActorID, MovieID, Role)
	values (1, 1, 'Leonidas');
insert into Credit (ActorID, MovieID, Role)
	values (2, 1, 'Queen Gorgo');
insert into Credit (ActorID, MovieID, Role)
	values (3, 1, 'Dilios');
insert into Credit (ActorID, MovieID, Role)
	values (4, 2, 'Luis Antonio Vargas');
insert into Credit (ActorID, MovieID, Role)
	values (5, 2, 'Julia Russell / Bonny Castle');
insert into Credit (ActorID, MovieID, Role)
	values (6, 2, 'Billy / Walter Downs / Mephisto');