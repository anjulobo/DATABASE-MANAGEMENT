# in operator(in place of multiple or)
select * from student2 where age or age=20 or age=19 or age=24;
select * from student2 where age in (18,21);
select * from student2 where age in (18,21,19);
select * from student2 where age not in(18,21,19);
select * from student2 where city in("delhi","bhopal");
select * from student2 where city not in("delhi","bhopal");
select * from student2 where id in(1,3,4);








