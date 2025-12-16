use company;
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
#select
select*from student2;
select name ,age from student2;
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


#Logical Operator(AND,OR,NOT)
select * from student2 where age>=18 and age<=20;
select * from student2 where age>=18 or age<=20;
select * from student2 where age<=20 and gender="M";
select * from student2 where age<=20 and gender="m" and city="agra";
select * from student2 where age<=20 or city="agra";
select * from student2 where city="bhopal" or city="Agra";
select * from student2 where(city= "bhopal" or city="Agra");
select * from student2 where(City="bhopal" or city="Agra")and gender="M";


# in operator(in place of multiple or)
select * from student2 where age or age=20 or age=19 or age=24;
select * from student2 where age in (18,21);
select * from student2 where age in (18,21,19);
select * from student2 where age not in(18,21,19);
select * from student2 where city in("delhi","bhopal");
select * from student2 where city not in("delhi","bhopal");
select * from student2 where id in(1,3,4);


#between operator
select * from student2 where age between 18 and 20;
select * from student2 where age not between 18 and 20;
select * from student2 where id between 2 and 5;
select * from student2 where id not between 1 and 6;
select * from student2 where name between "a" and "k";


# like operator
select * from student2 where name like "s%";
select * from student2 where name like "a%";
select * from student2 where name like "ram%";
select * from student2 where name like "rm%";
select * from student2 where name like "%am%";



#regular expressions
select* from student2 where name regexp 'ra';
select* from student2 where name regexp 'la';
select* from student2 where name regexp 'man';


#beginning
select* from student2 where name regexp '^ra';
select* from student2 where name regexp'^sa';
select* from student2 where name regexp '^ma';



# last
select* from student2 where name regexp'an$';



#order by
select*from student2 order by name;
select*from student2 order by name asc;
select*from student2 order by name desc;
select*from student2 order by age;
select*from student2 order by city;



# distinict
select distinct city from student2;
select distinct age from student2;
select distinct age from student2 order by age;
select distinct city from student2 order by city;

#limit
select * from student2;
select * from student2 limit2;
select * from student2 limit3;
select * from student2 where city="agra";
select * from student2 where city="patna"; 

# offset
select * from student2 limit 0,2;
select * from student2 limit 0,4;
select * from student2 limit 3,2;
select * from student2 limit 5,2;

# Aggregate functions
select count(name) from student2;
select min(percentage) from student2;

#Arthmatic function
select 6+5;
select 6000-1236.23;
select 30520*2;
select round(4.51);
select round(5.632);
select pow(2,2);
select pow(3,9);
select pow(2,4);
select round(sqrt(5),2);
select rand();
select rand()*100;
select rand()*200;
select abs(-56);
select abs(100);
select abs(-2356);
select sign(5);
select sign(256);
select sign(0);
select sign(12365415);
select sign(-236);


#String function
select* from student2;
select concat("raj");
select concat_ws("_","raj","hello","class");
select trim("riya");
select*from student2;
select position("o" in "helloworld");
select instr("helloworld","ell");
select locate("l","helloworld",3);
select substring("riya",5);
select reverse("jay prakash");



#data function
select current_date();
select curdate();
select sysdate();
select date("2025-10-14 10:09:21");
select week("2025-10-14 10:09:21");



#time function
select current_time();
select curtime();
select current_timestamp();




