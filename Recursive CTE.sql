

--Recursive CTE
---Factorial of a given number

with [R CTE] as(
--Anchor Query
select 1 as n

union all
---Recursive Query
select n+1 from [R Cte] where n<=4
)


-------FActorial of a number 

 select exp(sum(log(n))) [Factorial] from [R CTE]



 ------------------------------------------------------
 with [R CTE] as(
--Anchor Query
select 1 as n

union all
---Recursive Query
select n+1 from [R Cte] where n<=4
)


  

 select  * from [r cte]