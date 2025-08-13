

select * from ProfitData
-- to add new column that show previous month profit for each product

select *, lag(profit) over(partition by product order by monthnumber) [previous months profit] 
from ProfitData


-- we don't want product column in output but we want each month total profit to be show by monthnumber & monthname, Also a 
--new column should be added to show previous month's total profit

select monthnumber, monthname, sum(profit)[total profit], lag(sum(profit)) over(order by monthnumber)[previous month total profit]
from ProfitData
group by monthnumber, monthname
order by monthnumber