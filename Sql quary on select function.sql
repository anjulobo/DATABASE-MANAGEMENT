#select
select city from student2;
select name as st_name ,age as st_age from student2;
select*from student2;
# where
select*from student2 where gender="M";
select* from student2 where gender="F";
select*from student2 where city="delhi";
# comparison operators
select*from student2 where age>18;
select*from student2 where age<18;
select * from student2 where age<20;
select * from student2 where age>=18;
select * from student2 where age<=20;
select * from student2 where city="agra";
select * from student2 where city<>"agra";
