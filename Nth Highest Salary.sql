

select * from Employees

---2nd Highest Salary
select max(salary)[2nd Highest Salary] from employees where salary<
(select max(salary) from employees)

---3rd Highest Salary
select max(salary) [third highest salary]from employees where salary<
(select max(salary)[2nd Highest Salary] from employees where salary<
(select max(salary) from employees))

---CTE

with cte as (
select *, dense_rank() over(order by salary desc)[DR] from employees
)
select salary [2nd Highest SAlary]from cte where dr=2


-------------
with cte as (
select *, dense_rank() over(order by salary desc)[DR] from employees
)
select salary [2nd Highest SAlary]from cte where dr=3

---Sub Query along with Dense_Rank()
select salary as [2nd Highest salary] from
(select*,Dense_rank() over(order by salary desc) [DR] from employees)x
where dr=2


---Sub Query along with Dense_Rank()
select salary as [2nd Highest salary] from
(select*,Dense_rank() over(order by salary desc) [DR] from employees)x
where dr=3

------------Sub Query
select top 1 salary from
(select distinct top 2 salary from employees order by salary desc) x
order by salary asc

---#rd Highest Salary
select top 1 salary from
(select distinct top 3 salary from employees order by salary desc) y
order by salary asc