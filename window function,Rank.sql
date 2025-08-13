
--Row number-> in case of tie row number are assigned randomly
select * from Students

select *, ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students
--RAnk -> if ther's tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as [Rank Function]
from Students
---Dense RAnk -> if ther's tie rank/ranks will not be skipped
select *,DENSE_RANK() over(order by marks desc) as [Dense RAnk] from Students




---------------------------------------------------------------------------------------



--Row number-> in case of tie row number are assigned randomly
select * from Students

select *, ROW_NUMBER() over(order by marks ) as [Row Number]
from Students
--RAnk -> if ther's tie next rank/ranks will be skipped
select *,rank() over(order by marks ) as [Rank Function]
from Students
---Dense RAnk -> if ther's tie rank/ranks will not be skipped
select *,DENSE_RANK() over(order by marks ) as [Dense RAnk] from Students



----------------------------------------------------------------------


--Row number-> in case of tie row number are assigned randomly
select * from Students

select *, ROW_NUMBER() over(order by marks asc) as [Row Number]
from Students
--RAnk -> if ther's tie next rank/ranks will be skipped
select *,rank() over(order by marks asc) as [Rank Function]
from Students
---Dense RAnk -> if ther's tie rank/ranks will not be skipped
select *,DENSE_RANK() over(order by marks asc) as [Dense RAnk] from Students





