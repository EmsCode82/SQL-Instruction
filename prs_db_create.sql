-- Drop and Create the Database, DDL

drop database if exists prs;
create database prs;
use prs;

-- DDL - Create Tables

create table User (
	ID 				int 			not null primary key auto_increment,
    UserName        varchar(20)     not null,
	Password        varchar(10)     not null,
    FirstName 		varchar(20)		not null,
	LastName 		varchar(20)		not null,
	PhoneNumber     varchar(12)     not null,
    Email           varchar(75)     not null,
    IsReviewer 		TinyInt         not null,
	IsAdmin		    TinyInt         not null,
    Constraint uname unique (UserName)
    );
    
create table Vendor  (
	ID 				int 			primary key auto_increment,
	Code            varchar(10)    not null,
	Name 		    varchar(255)   not null,
	Address 		varchar(255)   not null,
	City    	    varchar(255)   not null,	
    State           varchar(2)     not null,
    Zip             varchar(5)     not null,
    PhoneNumber     varchar(12)    not null,
    Email           varchar(100)   not null,
    Constraint vcode unique (Code)
	);

create table Request (
	ID 				int 			not null primary key auto_increment,
	UserID		    int 			not null,
	Description		varchar(100) 	not null,
	Justification   varchar(255)    not null,
	DateNeeded      DATE            not null,
	DeliveryMode    varchar(25)     not null,
    Status          varchar(20)     not null,
    Total           decimal(10, 2)  not null,
    SubmittedDate   DATETIME        not null,
    ReasonForRejection varchar(100),
    FOREIGN KEY (UserID) REFERENCES User(ID)
    );
    
    create table Product (
	ID 				int 			not null primary key auto_increment,
	VendorID		int 			not null,
	PartNumber		varchar(50) 	not null,
	Name            varchar(150)    not null,
	Price           decimal(10, 2)  not null,
	Unit            varchar(255),
    PhotoPath       varchar(255),
    Foreign Key (VendorID) References Vendor(ID),
    Constraint vendor_part unique (VendorID, PartNumber)
    );
    
    create table LineItem (
    ID              int             not null,
    RequestID       int             not null,
    ProductID       int             not null,
    Quantity        int             not null,
    Foreign Key (ProductID) references Product(ID),
    Foreign Key (RequestID) references Request(ID),
    Constraint req_pdt unique (RequestID, ProductID) 
    );
        
-- DML Insert Data

-- User
insert into User (Id, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer,IsAdmin) 
	values (1, 'eshepard', 'pass1', 'Eric', 'Shepard', '513-693-0632', 'emscode@gmail.com', 1, 1);
insert into User (Id, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer,IsAdmin) 
	values (2, 'jsnuffy', 'pass2', 'Joe', 'Snuffy', '513-645-7438', 'jsscode@gmail.com', 1, 0);
insert into User (Id, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer,IsAdmin) 
	values (3, 'kpuffy', 'pass3', 'Kim', 'Puffy', '513-365-8594', 'kppcode@gmail.com', 0, 0);

-- Vendor
insert into Vendor (Id, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
    values (1, 'AMZN', 'Amazon', '410_Terry_ Ave_North', 'Seattle', 'WA', '98109', '206-266-1000', '@amzn.com');
insert into Vendor (Id, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
    values (2, 'EBAY', 'EBAY', '2025_Hamilton_ Avenue', 'San Jose', 'CA', '95125', '866-540-3229', '@ebay.com');
insert into Vendor (Id, Code, Name, Address, City, State, Zip, PhoneNumber, Email)
    values (3, 'WLMT', 'WalMart', ' 702_S.W._8th_St', 'Bentonville', 'AR', '72716', '800-925-6278', '@wlmt.com');

-- Product
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (1, 1, '1001', 'Voo Doo Tactical Shotgun Scabbard', '29.26', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\VoodooShotgunScabbard.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (2, 2, '1002', 'Voo Doo Tactical Shotgun Scabbard', '31.94', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\VoodooShotgunScabbard.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (3, 3, '1003', 'Voo Doo Tactical Shotgun Scabbard', '29.26', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\VoodooShotgunScabbard.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (4, 1, '1004', 'SMITH & WESSON Oasis', '15.72', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SWO.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (5, 2, '1005', 'SMITH & WESSON Oasis', '13.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SWO.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (6, 3, '1006', 'SMITH & WESSON Oasis', '13.97', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SWO.jpg');    
 insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (7, 1, '1007', 'Hoover SmartWash Automatic Carpet Cleaner', '198.00', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\HSW.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (8, 2, '1008', 'Hoover SmartWash Automatic Carpet Cleaner', '199.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\HSW.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (9, 3, '1009', 'Hoover SmartWash Automatic Carpet Cleaner', '198.00', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\HSW.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (10, 1, '1010', 'Hasbro Jenga Classic', '10.27', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\Jenga.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (11, 2, '1011', 'Hasbro Jenga Classic', ' 12.59', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\Jenga.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (12, 3, '1012', 'Hasbro Jenga Classic', '21.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\Jenga.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (13, 1, '1013', 'Sony PlayStation 4 Pro 1TB Console', '336.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\PS4.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (14, 2, '1014', 'Sony PlayStation 4 Pro 1TB Console', '300.00', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\PS4.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (15, 3, '1015', 'Sony PlayStation 4 Pro 1TB Console', '319.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\PS4.jpg');
 insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (16, 1, '1016', 'World of Warcraft Battle For Azeroth', '40.49', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\WWBFA.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (17, 2, '1017', 'World of Warcraft Battle For Azeroth', '38.50', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\WWBFA.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (18, 3, '1018', 'World of Warcraft Battle For Azeroth', '49.88', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\WWBFA.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (19, 1, '1019', 'The Elder Scrolls V Skyrim Special Edition - PlayStation 4', '39.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SKSE.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (20, 2, '1020', 'The Elder Scrolls V Skyrim Special Edition - PlayStation 4', '24.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SKSE.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (21, 3, '1021', 'The Elder Scrolls V Skyrim Special Edition - PlayStation 4', '19.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\SKSE.jpg');    
 insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (22, 1, '1022', 'DualShock 4 Wireless Controller for PlayStation 4', '49.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\DSPS4.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (23, 2, '1023', 'DualShock 4 Wireless Controller for PlayStation 4', '37.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\DSPS4.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (24, 3, '1024', 'DualShock 4 Wireless Controller for PlayStation 4', '47.89', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\DSPS4.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (25, 1, '1025', 'Fallout 4 Game of The Year Edition - PlayStation 4', '23.49', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\FO4GOTY.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (26, 2, '1026', 'Fallout 4 Game of The Year Edition - PlayStation 4', '21.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\FO4GOTY.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (27, 3, '1027', 'Fallout 4 Game of The Year Edition - PlayStation 4', '24.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\FO4GOTY.jpg');
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (28, 1, '1028', 'A Plague Tale: Innocence - PlayStation 4', '29.99', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\APTI.jpg'); 
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (29, 2, '1029', 'A Plague Tale: Innocence - PlayStation 4', '35.01', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\APTI.jpg');    
insert into Product (Id, VendorID, PartNumber, Name, Price, Unit, PhotoPath)
    values (30, 3, '1030', 'A Plague Tale: Innocence - PlayStation 4', '30.02', '1', 'C:\repos-202003jbc\sql-instruction\PhotoPath\APTI.jpg');   