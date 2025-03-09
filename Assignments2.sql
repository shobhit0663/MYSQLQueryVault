# Q.1] To Display Details of all Employee in Descending order of their DOJ ?
select * from employee  order by DOJ desc;
# Q.2] To Display Name and Desig of those employees whose sgrade is either ‘So2’ or ‘So3’ ?
select NAME,DESIG,SGRADE from employee where SGRADE in ('S02','S03');
# Q.3] To Display Name and Desig of those employees who joined in the year 2009 ?
select NAME,DESIG,SGRADE from employee where Year(DOJ) = 2009;
# Q.4] To Display all SGRADE as AUNNAL_SALARY from table SAlGRADE [ where ANNAUAL_SALARY = SALARY*12]
select sgrade,(salary*12) as annual_salary from salgrade;
# Q.5] To display the number of employees working in each SALGRADE from the EMPLOYEE table?
select * from employee;
select * from salgrade;
select sgrade,count(*) as employee_count from employee group by sgrade;
# Q.6]To display NAME, DESIG, SALARY, and HRA from EMPLOYEE and SALGRADE where SALARY is less than 50,000?
SELECT E.NAME, E.DESIG, S.SALARY, S.HRA 
FROM EMPLOYEE E 
JOIN SALGRADE S ON E.SGRADE = S.SGRADE 
WHERE S.SALARY < 50000;
# Q.7] Select SGRADE and (SALARY + HRA) from SALGRADE where SGRADE = 'S02' ?
select sgrade,(salary + hra ) as total_compensation from salgrade where sgrade = 'S02';
# Q.8] Select MIN(DOJ) and MAX(DOB) from EMPLOYEE ? 
select min(DOJ) as oldest_join_date,max(DOB) as youngest_birth_date from employee;
# Q.9] Select the count of distinct SGRADE from EMPLOYEE ? 
select count(sgrade) from employee;
# Q.10] Select the total (SUM) and average (AVG) salary from SALGRADE ?
select sum(salary) as total_salary,avg(salary) as average_salary from salgrade ;