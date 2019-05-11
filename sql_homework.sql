-- CREATE TABLE titles
-- (
-- 	emp_no int NOT NULL,
-- 	title varchar(30) NOT NULL,
-- 	from_date date,
-- 	to_date date
-- )
	  
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.1. List the following details of each employee:
--employee number, last name, first name, gender, and salary.	  

--Select * from employees

--Select * from salaries

--SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, 
--salaries.salary from employees
--inner join 
--salaries on employees.emp_no
--= salaries.emp_no

-- 2. List employees who were hired in 1986.

--select emp_no, first_name, last_name, hire_date from employees
--where extract (year from hire_date) = '1986'

--3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

--select departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name, to_date, from_date from departments join dept_manager on departments.dept_no = dept_manager.dept_no
--join employees on employees.emp_no = dept_manager.emp_no

--4. List the department of each employee with the following information:
--employee number, last name, first name, and department name.
-- Using Departments table, employess table, dept_mang table

--select employees.emp_no, last_name, first_name, dept_name from departments 
--join dept_manager on 
--departments.dept_no = dept_manager.dept_no
--join employees on employees.emp_no = dept_manager.emp_no

--5. List all employees whose first name is "Hercules" and last names begin with "B."

--select employees.first_name, employees.last_name
--from employees
--where employees.first_name like 'Hercules' 
--and employees.last_name like 'B%'

--6. List all employees in the Sales department, including 
--their employee number, last name, first name, and department name.

--usings employees table, departments, and dept_emp
--select employees.emp_no, dept_name, first_name, last_name from departments
--join dept_emp on departments.dept_no = dept_emp.dept_no
--join employees on employees.emp_no = dept_emp.emp_no
--where dept_name like 'Sales'

--7. List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

--select employees.emp_no, last_name, first_name, dept_name from employees
--join dept_emp  on employees.emp_no = dept_emp.emp_no
--join departments on dept_emp.dept_no = departments.dept_no 
--where dept_name = 'Sales' or dept_name ='Development'

--8. In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

--select count (last_name) as "total_lastnames" from employees
--group by 
--SELECT last_name FROM employees 
--group by "last_name"
--order by "last_name" desc 

--select last_name, 
--count(last_name)
--from employees
--group by last_name
--order by count desc

--SELECT COUNT(last_name) 
--FROM employees 
-- set up an alias
--SELECT COUNT(last_name) AS "freq_lastname"
--FROM employees
--GROUP BY last_name
--ORDER BY COUNT(last_name) DESC;
--last_name 

-- CREATE TABLE Employees (
--     ID int NOT NULL,
--     last_name varchar(255) NOT NULL,
--     CONSTRAINT last_name PRIMARY KEY (ID,LastName)
-- );

--CREATE TABLE Employees (
 --   ID int NOT NULL PRIMARY KEY
 	--last_name varchar(255) NOT NULL
--);













