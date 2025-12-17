
CREATE DATABASE nmcompany;

USE nmcompany;

CREATE TABLE nmemployee
(
emp_id INT AUTO_INCREMENT PRIMARY KEY,
emp_name VARCHAR (50),
dept_id INT,
salary INT);

INSERT INTO nmemployee(emp_name,dept_id,salary)
VALUES
("John",101,50000),
("Emma",101,65000),
("Raj",102,45000),
("Meera",103,70000),
("Ravi",102,48000),
("Naina",103,52000),
("Alex",101,58000);

CREATE TABLE department
(
dept_id INT,
dept_name VARCHAR (100)
);

INSERT INTO department(dept_id,dept_name)
VALUES
(101,"Sales"),
(102,"Marketing"),
(103,"finance"),
(104,"HR");

SELECT *FROM department;

-- 1. Display employee names with their department name.

SELECT e.emp_name, d.dept_name
FROM nmemployee e
LEFT JOIN department d
ON d.dept_id = e.dept_id;

-- 2. List all employees including those with no matching department.

SELECT e.emp_name, d.dept_id, d.dept_name
FROM nmemployee e
LEFT JOIN department d
ON e.dept_id = d.dept_id;


-- 3. List all departments even if there are no employees.

SELECT d.dept_name, e.emp_name
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id;


-- 4. Show employees from the Sales department.

SELECT e.emp_name, d.dept_name
FROM nmemployee e
INNER JOIN department d
    ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales';

-- 5. Find the top 3 highest paid employees.

SELECT e.emp_name, e.salary
FROM nmemployee e
ORDER BY e.salary DESC
LIMIT 3;

-- 6. Find employees earning more than 50,000 from Marketing.

SELECT e.emp_name, d.dept_name, e.salary
FROM nmemployee e
LEFT JOIN department d 
ON d.dept_id = e.dept_id
WHERE e.salary > 50000 AND d.dept_name = "Marketing";
 -- // not showing result

-- // 7. Count employees in each department.

SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name ASC;


-- // 7. Count employees in each department.

SELECT d.dept_name,
       COUNT(e.emp_id) AS employee_count
       FROM department d
       LEFT JOIN nmemployee e
       ON d.dept_id = e.dept_id
       GROUP BY d.dept_name;

-- // 8. Show departments having more than 2 employees.

SELECT d.dept_name, COUNT(e.emp_id) AS count_of_emp
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id 
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 2
ORDER BY count_of_emp DESC;

-- // 9. Show highest salary in each department.

SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM department d 
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY highest_salary;

-- // 10. Show employees whose salary is above department average.

SELECT d.dept_name,
	AVG(e.salary) AS dept_avg_salary
FROM department d
LEFT JOIN nmemployee e
       ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name ASC;

SELECT e.emp_name,
       e.salary,
       d.dept_name
FROM nmemployee e
JOIN department d
       ON e.dept_id = d.dept_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM nmemployee e2
    WHERE e2.dept_id = e.dept_id
);      -- // need to check with ma'am


-- // 11. Show employees and their departments sorted by department name.

SELECT e.emp_name, d.dept_name
FROM nmemployee e
RIGHT JOIN department d
ON e.dept_id = d.dept_id
ORDER BY d.dept_name ASC;

-- // 12. List the 2 lowest-paid employees with department names.

SELECT e.emp_name, e.salary, d.dept_name
FROM nmemployee e
INNER JOIN department d
ON e.dept_id = d.dept_id
ORDER BY e.salary ASC
LIMIT 2;

-- // 13. Show total salary expenditure per department.

SELECT d.dept_name, SUM(e.salary) AS total_expenditure
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- // 14. Show departments where the total salary spent is more than 150,000.

SELECT d.dept_name, SUM(e.salary)
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name
HAVING SUM(e.salary)> 150000;


USE nmcompany;

-- // 15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  

SELECT e.emp_name, d.dept_name, AVG(e.salary) 
FROM nmemployee e
LEFT JOIN department d
ON e.dept_id = d.dept_id
GROUP BY e.emp_name, d.dept_name
HAVING AVG(e.salary) > 60000; 

-- 16 Find employees whose salary is the highest in their department.

SELECT e.emp_name, d.dept_name, e.salary
FROM nmemployee e
INNER JOIN department d
ON e.dept_id = d.dept_id WHERE e.salary = (SELECT MAX(salary) FROM nmemployee WHERE dept_id = e.dept_id);

-- // 17 Show employees and departments sorted by salary descending.

SELECT e.emp_name, d.dept_name, e.salary
FROM nmemployee e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY e.salary DESC;


-- // 18 Count how many employees earn above 50,000 per department.

SELECT d.dept_name, COUNT(e.emp_id) AS count_of_emp
FROM nmemployee e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE e.salary > 50000
GROUP BY d.dept_name; 

-- // 19 Show employee name, department, and salary for employees between 45,000 and 60,000

SELECT e.emp_name, e.salary, d.dept_id
FROM nmemployee e
INNER JOIN department d 
ON e.dept_id = d.dept_id
WHERE e.salary BETWEEN 45000 AND 60000;

-- // 20 Find departments with no employees.

SELECT d.dept_name, e.emp_name
FROM department d
LEFT JOIN nmemployee e
ON d.dept_id = e.dept_id
WHERE emp_name IS NULL;


 




















