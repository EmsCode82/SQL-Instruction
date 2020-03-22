-- list all transactions (amount, txntype) and the account holder
SELECT a.id, accountholder, amount, txntype
  from account a
  join transaction t
    on a.id = t.AccountID;