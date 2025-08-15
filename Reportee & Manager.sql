

select * from ReportingStructure

select a.employeename[Manger],b.employeename[reportees] from ReportingStructure a join ReportingStructure b
on a.employeeid = b.managerid

union all

select employeename , null [manager]from ReportingStructure
where managerid is null