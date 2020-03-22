select AccountHolder, amount, txntype
from transaction t
join account a
on t.AccountID = a.id;