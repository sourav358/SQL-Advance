

select * from employees

create procedure sp_test
as
begin
	select * from employees
end

sp_test

exec sp_test

execute sp_test

-------------

create proc sp_test_1
as begin
		select firstname, lastname from Employees
end
sp_test_1

exec sp_test_1

-------------------------------------
Alter proc sp_test_1
as
begin
	select employeeid,firstname ,lastname from employees
end