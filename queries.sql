-- 1)List the following details of each employee: employee number, last name, 
--first name, sex, and salary;
SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary
FROM employees a left JOIN 
     salaries b 
on a.emp_no = b.emp_no;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE
hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number,
--last name, first name.
SELECT b.dept_no, b.dept_name, c.emp_no, a.last_name, a.first_name
FROM departments b 
JOIN dept_manager c ON b.dept_no = c.dept_no
JOIN employees a ON c.emp_no = a.emp_no;

--4.List the department of each employee with the following information: employee number, 
--last name, first name, and department name.

SSELECT c.emp_no, a.last_name, a.first_name, b.dept_name
FROM dept_emp c
JOIN employees a ON c.emp_no = a.emp_no
JOIN departments b ON c.dept_no = b.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE
first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name,
-- first name, and department name.
SELECT c.emp_no, a.last_name, a.first_name, b.dept_name
FROM dept_emp c
JOIN employees a ON c.emp_no = a.emp_no
JOIN departments b ON c.dept_no = b.dept_no
WHERE b.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT c.emp_no, a.last_name, a.first_name, b.dept_name
FROM dept_emp c JOIN employees a ON c.emp_no = a.emp_no
	JOIN departments b ON c.dept_no = b.dept_no
WHERE (b.dept_name = 'Sales'
OR b.dept_name = 'Development');

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

