--List the employee number, last name, first name, sex, and salary of each employee 
SELECT e.emp_no, e.last_name, e.last_name, e.sex, s.salary
FROM employees e
inner join salaries s ON
e.emp_no = s.salary;

--List the first name, last name, and hire date for the employees who were hired in 1986
select hire_date, last_name, first_name
FROM employees e
WHERE hire_date = '1986-12-31' and hire_date < '1987-01-01';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, dm.emp_no, d. dept_name, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d on
dm.dept_no = d.dept_no
inner join employees e on
dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, de.emp_no, d.dept_name, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp de on
e.emp_no = de.emp_no
INNER JOIN departments d on
de.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select e.last_name, e.first_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND last_name = 'B';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp de on
e.emp_no = de.emp_no
INNER JOIN departments d on
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
e.emp_no = de.emp_no
INNER JOIN departments d on
de.dept_no = d.dept_no
WHERE d.dept_name in ('Sales','Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS Frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;