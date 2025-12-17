CREATE DATABASE employees;

USE employees;

CREATE TABLE employee_1
	(
		emp_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        department VARCHAR(50),
        salary DECIMAL(10,2),
        hire_date DATE
	);
INSERT INTO employee_1(first_name, last_name, department, salary, hire_date)
VALUES
("John","Doe","IT",60000.00,"2019-01-10"),
("Jane","Smith","HR",55000.00,"2018-03-05"),
("Emily","Jones","IT",62000.00,"2020-07-23"),
("Michael","Brown","Finance",70000.00,"2016-05-14"),
("Sarah","Davis","Finance",69000.00,"2017-11-18"),
("David","Johnson","HR",48000.00,"2021-09-10");

-- 1. Find the average salary of employees in each department. 

USE employees;

SELECT department, 
AVG(salary) AS avg_salary
FROM employee_1
GROUP BY department;

-- 2. Find the total number of employees hired after 2019. 
USE employees;

SELECT 
	COUNT(*) as total_no_emp
	FROM employee_1
WHERE year(hire_date)>2019;


-- 3. List the departments and the total salary of all employees in each department, ordered by the total salary. 

USE employees;

SELECT department,  
    SUM(salary) AS total_salary 
FROM employee_1
GROUP BY department
ORDER BY total_salary DESC;   

-- 4. Find the highest salary in the Finance department. 

SELECT MAX(salary) AS highest_salary
FROM Employee_1
WHERE department = 'Finance';

SELECT first_name, salary
FROM Employee_1
WHERE department = 'Finance'
ORDER BY salary DESC
LIMIT 1;

SELECT first_name, last_name, salary
FROM employee_1
WHERE department = 'Finance'
AND salary = (SELECT MAX(salary) FROM employee_1 WHERE department = 'Finance');

-- 5. Get the top 3 highest-paid employees. 

SELECT first_name,last_name, salary 
FROM employee_1
ORDER BY salary DESC
LIMIT 3;

SELECT *
FROM employee_1
ORDER BY salary DESC
LIMIT 3;

-- 6. Find the department with the minimum average salary.  

SELECT
	department,
    avg(salary) as average_salary
FROM employee_1
GROUP BY department
ORDER BY avg(salary)
LIMIT 1;

-- 7. Display the total number of employees in each department, ordered by the number of employees. 

SELECT department, COUNT(*)
FROM employee_1
GROUP BY department
ORDER BY COUNT(*) DESC;

SELECT emp_id, 
 COUNT(*) AS total_employees
FROM employee_1
GROUP BY emp_id
ORDER BY total_employees DESC;

-- 8. Find the average salary of employees who were hired before 2020.  

SELECT 
AVG(salary) as Average_salary
FROM employee_1
WHERE year(hire_date)<2020;

-- 9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 

SELECT first_name, department, hire_date
FROM employee_1
WHERE department = "IT"
ORDER BY year(hire_date) DESC;

-- 10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 

SELECT 
SUM(salary) as sum_of_salary
FROM employee_1
WHERE hire_date >"2019-01-01";

-- 11. Get the employee with the lowest salary in the HR department. 

SELECT first_name, salary 
FROM employee_1
WHERE department = "HR" 
ORDER BY salary ASC
LIMIT 1;

-- 12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  

SELECT department, SUM(salary) AS total_paid_salary
FROM employee_1
GROUP BY department
ORDER BY SUM(salary)DESC
LIMIT 2;

SELECT department, SUM(salary) AS total_paid_salary
FROM employee_1
GROUP BY department
ORDER BY total_paid_salary DESC
LIMIT 2;

-- 13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees. 

SELECT first_name, year(hire_date) as hired, salary
FROM employee_1
WHERE year(hire_date)> 2018 
ORDER BY salary DESC
LIMIT 4;
 
-- 14. Find the highest salary in the IT department, but limit the results to the top 1 result.   

SELECT first_name, salary
FROM employee_1
WHERE department = "IT"
ORDER BY salary DESC
LIMIT 1;

-- 15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  

SELECT department, AVG(salary) AS avg_salary
FROM employee_1
GROUP BY department
HAVING AVG(salary) > 60000
ORDER BY avg_salary DESC;

