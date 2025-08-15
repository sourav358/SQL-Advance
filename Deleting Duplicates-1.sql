

select * from employeerecords 
order by employeeid,employeename,managerid

with cte as (
select *, row_number() over(partition by employeeid, employeename, managerid order by employeeid) [RowNUmber]from employeerecords
)
select * from cte

delete from cte where [Rownumber] = 2

select * into emp_records from employeerecords

-------------
select * from emp_records

select distinct * into #1 from emp_records 

truncate table emp_records

insert into emp_records select * from #1