show databases;
use assignments;
show tables;
select * from account;
select * from transact;
# Q.1] To Display details of all transactions of Type withdraw from Transact table .
Select * from transact where TYPE = 'Withdraw';
# Q.2] To display details ANO and AMOUNT of all Deposite and Withdrawals done in month of  ‘May’ 2017 from table TRANSACT?
select ANO,AMOUNT from TRANSACT where Date_Format(DOT,'%Y-%m') = '2017-05';
# Q.3] To Display the first date of transaction DOT from the Transact for account having  ANO as 102 ?
select min(DOT) from transact where ANO = 102 ;
# Q.4]  To Display first date of transaction (DOT) of those persons from Account and  Transact table who have done transaction less than or equal to 3000 ? 
SELECT A.ANO, A.ANAME, A.ADDRESS, MIN(T.DOT) AS First_Transaction_Date FROM Account A JOIN Transact T ON A.ANO = T.ANO
WHERE T.AMOUNT <= 3000
GROUP BY A.ANO, A.ANAME, A.ADDRESS;
# Q.5] Select ANO,ANAME From Account ?
select ANO,ANAME From Account;
# Q.6] Select Distinct ANO From Transact ?
Select distinct(ANO) from transact;
# Q.7] Select Count(*),Sum(Amount)  From Transact where DOT <= ‘2017-10-01’ ?
select count(*),sum(Amount) from transact where DOT <= '2017-10-01';