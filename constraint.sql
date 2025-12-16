use company;
select*from student2;
select name ,age from student2;use company;
create table student2(id int not null unique,
name varchar(20) not null, 
age int not null check(age>18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null default'agra');
select* from student2;
insert into student2(id,name,age,gender,phone,city)values
(1,"raj",25,"M",6200800153,"delhi");
insert into student2(id,name,age,gender,phone,city)values
(2,"Ria",21,"F",6200800154,"delhi"),
(3,"Rajat",21,"M",6200800155,"delhi"),
(4,"suraj",23,"M",6200800156,"agra"),
(5,"sonia",19,"F",6200800157,"agra");