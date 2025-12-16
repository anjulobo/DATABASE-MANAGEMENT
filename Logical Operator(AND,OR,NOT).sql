#Logical Operator(AND,OR,NOT)
select * from student2 where age>=18 and age<=20;
select * from student2 where age>=18 or age<=20;
select * from student2 where age<=20 and gender="M";
select * from student2 where age<=20 and gender="m" and city="agra";
select * from student2 where age<=20 or city="agra";
select * from student2 where city="bhopal" or city="Agra";
select * from student2 where(city= "bhopal" or city="Agra");
select * from student2 where(City="bhopal" or city="Agra")and gender="M";




