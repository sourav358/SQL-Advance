

select * from EmployeeSalaries

select *,
first_value(salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *,
first_value(EmployeeName) over(order by salary asc) [employee with Minimum Salary],
first_value(salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *
, first_value(employeeid) over(partition by department order by salary)[First VAlue]
from EmployeeSalaries


select *
, first_value(employeeid) over(partition by department order by salary desc)[First VAlue eid]
, first_value(EmployeeName) over(partition by department order by salary desc)[First VAlue ename]
from EmployeeSalaries
