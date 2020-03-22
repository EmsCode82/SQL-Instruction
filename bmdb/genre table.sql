use bm_db;

create table Genre (
	ID 				int 			not null primary key auto_increment,
	Name 		    varchar(20)		not null unique
	);
    
create table MovieGenre (
	ID 				int 			not null primary key auto_increment,
	Movie 		    int     		not null,
    GenreID         int             not null,
    foreign key     (MovieID) references Movie(ID),
    foreign key     (GenreID) references Genre(ID),
    constraint  mov_gen unique (MovieID, GenreID)
    );
    
    