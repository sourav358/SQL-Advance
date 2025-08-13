

select * from EmployeeSalaries
--Incorrect Query
select * 
, last_value(employeename) over (order by salary desc)[emp with lowest salary] 
from EmployeeSalaries

--correct Query
select * 
, last_value(employeename) over (order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary] 
from EmployeeSalaries

select * 
, last_value(employeename) over (order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary] 
, last_value(salary) over (order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary] 

from EmployeeSalaries



select * 
, last_value(employeename) over (partition by department order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary] 
, last_value(salary) over (partition by department order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary] 

from EmployeeSalaries

select * 
, last_value(employeename) over (partition by department order by salary  rows between unbounded preceding and unbounded following)[emp with lowest salary] 
, last_value(salary) over (partition by department order by salary  rows between unbounded preceding and unbounded following)[emp with lowest salary] 

from EmployeeSalaries


---First VAlue Window Function

select * 
, first_value(employeename) over (partition by department order by salary desc  )[emp with lowest salary] 
, first_value(salary) over (partition by department order by salary   desc)[emp with lowest salary] 

from EmployeeSalaries
