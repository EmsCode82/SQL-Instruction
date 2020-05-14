-- create and select the database
drop database if exists first_run;
create database first_run;
use first_run;

-- create the player race table
create table PlayerRace (
	ID 				int 			primary key auto_increment,
    BirthCountry 	varchar(50) 	not null,
    Race     		varchar(50)		not null,
    RacialAbility	varchar(50) 	not null,
    Ancestry 		varchar(50) 	not null
    );
    
 -- create the transactions table   
create table Weapon (
	ID 			int 			primary key auto_increment,
    WeaponType 	varchar(50) 	not null,
    Dps     	int         	not null,
    WeaponID 	int 			not null, 
    foreign key (WeaponID) references PlayerRace(ID)
    );
 
-- insert records
insert PlayerRace (ID, BirthCountry, Race, RacialAbility, Ancestry) Values (1,'Morakesh', 'Calricee', 'Sunder', 'Morochia');
insert PlayerRace (ID, BirthCountry, Race, RacialAbility, Ancestry) Values (2,'Aliaon', 'Bericar', 'Mind Crash', 'Altishiar');
insert PlayerRace (ID, BirthCountry, Race, RacialAbility, Ancestry) Values (3,'Eroach', 'Seriphim', 'Laceration', 'Uorachian');
insert PlayerRace (ID, BirthCountry, Race, RacialAbility, Ancestry) Values (4,'Tinuat', 'Dorcrosh', 'Bulwark', 'Tyriat');

insert Weapon (WeaponType, Dps, WeaponID) Values ('Sword', 10, 1);
insert Weapon (WeaponType, Dps, WeaponID) Values ('Staff', 8, 2);
insert Weapon (WeaponType, Dps, WeaponID) Values ('Scyth', 9, 3);
insert Weapon (WeaponType, Dps, WeaponID) Values ('Club', 7, 4);