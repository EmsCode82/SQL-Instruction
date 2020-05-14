select * from lineitem;
delete from lineitem where id = 1;
insert into lineitem
(RequestId, ProductId, Quantity)
values (2, 19, 2)