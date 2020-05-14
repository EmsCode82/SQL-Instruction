select * from user;
delete from user where id = 6;
insert  into user
(UserName, Password, FirstName, LastName, PhoneNumber,
Email, IsReviewer, IsAdmin)
values ('dummy', 'eman', 'Eric', 'Shepard', '513-693-0632', 'emscode82@gmail.com', 0, 1);

Select * from user
where id = 3;
select * from vendor;
select * from product;

select * from request;

update user
set UserName = 'Eric'
where UserName = 'dummy';

select * from user where id = 3;

select * from product


