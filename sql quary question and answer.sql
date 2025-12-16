SELECT * FROM company.student2;
use company;
insert into student2(id,first_name,last_name,department,salary,hire_date)values
(1,"michal","brown","Finance",70000,"2018-07-23"),
(2,"sara","davis","Finance",69000,"2020-07-22"),
(3,"Emily","Fones","IT",69000,"2019-08-13"),
(4,"John","Doe","IT",60000,"2012-09-15"),
(5,"Jane","Smith","HR",55000,"2019-10-10"),
(6,"David","Johnson","HR",48000,"2025-11-15");

select * from student2; 
#1.	Find the average salary of employees in each department.
select department,
avg(salary) as avarage_salary
from student2
group by department;


#2.	Find the total number of employees hired after 2019.
select count(*) from student2 where hire_date> "2019-12-31";

#3.List the departments and the total salary of all employees in each department, ordered by the total salary.
select 
department,
sum(salary)as total_salary
from student2
group by department
order by
total_salary desc;

#4.Find the highest salary in the Finance department. 
select max(salary)as highest_salary
from student2 where department='finance';

#5.. Get the top 3 highest-paid employees
select first_name,last_name,department,salary
from student2 order by salary desc;

#6 .  Find the department with the minimum average salary.  
select department,avg(salary) as avg_salary
from student2
group by department
order by avg_salary asc;


#7.Display the total number of employees in each department, ordered by the number of employees. 
select department,
count(*) as total_employees from student2 group by department order by total_employees;


#8.Find the average salary of employees who were hired before 2020.  
select avg(salary)
from student2 where hire_date<'2020-01-01';

#9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
select first_name,last_name,hire_date from student2
where department='IT'
order by hire_date desc;


#10..  Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.
select sum(salary)as total_salaries
from student2
where hire_date>'2019-01-01';  

#11.  Get the employee with the lowest salary in the HR department.
select first_name, last_name, department,salary
from student2
where department='HR'
order by salary asc
limit 1;


#12.  Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  
select department,sum(salary)as total_salary
from student2
group by department
order by total_salary desc
limit 2;


#13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select *
from student2
where hire_date>'2018-12-31'
order by salary desc
limit 4;

#14..  Find the highest salary in the IT department, but limit the results to the top 1 result.   
select first_name, last_name, department,salary
from student2 where department='IT'
order by salary desc limit 1;

#15..  Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
select department, avg(salary)as avarage_salary
from student2 group by department
having avg(salary)>60000;