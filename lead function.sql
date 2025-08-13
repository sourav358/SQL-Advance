

select * from ProfitData

-- to add new column that show next month profit for each product

select *, lead(Profit) over(partition by product order by monthNumber)[Next Month's profit]
from ProfitData


-- we don't want product column in output but we want each month total profit to be show by monthnumber & monthname, Also a 
--new column should be added to show next month's total profit

select MonthNumber,MonthName,sum(profit)[Total profit] ,lead(sum(profit)) over(order by monthnumber)[Next month Tootal profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber