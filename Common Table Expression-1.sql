
/*
A coomon table expression(CTE) in SQL is a temporary result set that you can reference within a SELECT, INSERT,UPDATE, or DELETE
statement. CTEs are defined using the WITH keyword, and they can make complex queriers easier to write, understand, and maintain by breaking 
into simpler parts.
*/

select * from Employees


select * into #temp1 from Employees

select * from #temp1


---Example 1 :CTE

With CTE AS(
select * from #temp1
)

select * from cte

---Example 2

with test_CTE as(
select employeeid, firstname from #temp1 where employeeid in(2,4)
)

select * from test_cte


---Example 3

with [common Table expression] as (
select * from #temp1 where employeeid in(1,2,3)
)
select * into #temp2 from [Common Table Expression]

select * from #temp2

---Example 4:

with CTE_1 as (
select * from #temp1 where employeeid in(2,4,6)
)
update #temp1 set employeeid =101 where employeeid in(select distinct employeeid from cte_1)

---Example 5:
with cte_2 as (
select * from #temp1 where employeeid =1
)
delete from #temp1 where employeeid in(select distinct EmployeeID from cte_2)

-- Example 6

with CTE_3 as (
select * from #temp1 where employeeid in (101)
)
insert into #temp1 select * from CTE_3