

select * from employees

select * into #1 from dbo.employees

----Example 1:
 with cte_1 as(
 select * from #1 where employeeid in(1,2)
 ),
 cte_2 as(
 select * from #1 where employeeid in (3,4)
 )

 select * from  cte_1
 union all
 select * from  cte_2

 ---Example 2:
 with cte_3 as(
 select employeeid,firstname from #1 where employeeid =1
 ),
 cte_4 as(
 select employeeid, firstname from #1 where employeeid in(3)
 )

 select * into #2 from (
 select * from cte_3
 union all
 select* from cte_4
 ) x

 select * from #2

 ---Example 3:

  with cte_3 as(
 select employeeid,firstname from #1 where employeeid =1
 ),
 cte_4 as(
 select employeeid, firstname from #1 where employeeid in(3)
 )

insert into #2 select *  from (
 select * from cte_3
 union all
 select* from cte_4
 ) x

 --Example 4
 
  with cte_3 as(
 select employeeid,firstname,salary from #1 where employeeid =1
 ),
 cte_4 as(
 select employeeid, firstname,salary from #1 where employeeid in(3)
 )

 delete from #1 where employeeid in (select distinct employeeid from cte_3 union all
 select distinct employeeid from cte_4)

 select * from #1

 --Example 5
   with cte_3 as(
 select employeeid,firstname,salary from #1 where employeeid =9
 ),
 cte_4 as(
 select employeeid, firstname,salary from #1 where employeeid in(10)
 )

 update  #1 set employeeid = 100  where employeeid not in (select distinct employeeid from cte_3 union all
 select distinct employeeid from cte_4)

 select * from #1




 