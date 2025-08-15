

select * from  EmployeeRecords_1
order by employeeid,email

------------------
select distinct * into #1 from  EmployeeRecords_1

truncate table  EmployeeRecords_1

insert into  EmployeeRecords_1 select * from #1

select * from  EmployeeRecords_1 
order by email

--Record with lower employeeid should remain

with cte as (
select *, DENSE_RANK() over(partition by email order by employeeid)[DR] from  EmployeeRecords_1
)
--select * from cte

delete from cte where dr=2


--------
select   * into  EmployeeRecords_2 from #1

select * from  EmployeeRecords_2 order by email


---Retain the record with higher eemployeeid

with cte as(
select *, dense_rank() over(partition by email order by employeeid desc) [DR] from  EmployeeRecords_2)
--select * from cte

delete from cte where dr = 2



select * from  EmployeeRecords_1 ---empid 5 retain

select * from  EmployeeRecords_2 --empid 6 retain