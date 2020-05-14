select FirstName, u.lastName, description, justification, p.name as 'product name', p.price, requestId, productId, quantity 

from request r 
join lineitem l
    on  r.id = l.RequestId
    join user u
    on u.id = r.userid
    join product p
    on p.id = l.productid;