

select * from employees

select * into emp_bkp from employees

select * from emp_bkp

--- A view is a virtual table,it is a stored SQL Query
--It helps in reducing the complexity of the code
---It helps in implenting security

create view view_1 as(
select * from emp_bkp
)

select * from view_1
--**
update view_1 
set EmployeeID=100


--**


create view view_2 as (
select employeeid,firstname, lastname , DepartmentID,HireDate from emp_bkp
)

select * from view_2


-----drop the view
drop view view_2

