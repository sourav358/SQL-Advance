

select * from Customers

---isNull
select isnull(null,'1 st value null')

select isnull('abx',null)

select isnull(null,null)

select coalesce ('A','B','C')

select coalesce (null,null,'C')

select * from Customers 

select customerid,email,phonenumber from Customers

select customerid,isnull(email,'Email NA'),isnull(phonenumber,'Phone no. NA') from Customers

select customerid,coalesce(email,phonenumber,'contact NA')[coalesce] from Customers