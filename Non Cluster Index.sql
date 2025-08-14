

select * from Students

create nonclustered index ix_2 on students(id)

create nonclustered index ix_1 on students (gender desc, age asc)

drop index ix_2 on students

---more than one clustered created
---additional disk required
---more faster than cluster index