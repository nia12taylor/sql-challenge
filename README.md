# sql-challenge
Module 9 SQL Challenge by Mwohania (Nia) Taylor

Repo for UC Berkeley Data Analytics Bootcamp

The SQL script contains six CSV files with employee information. The databases have data from the 1980s and 1990s.

Data Modeling
EmployeeDepartment.png demonstrates the relationships between employees, departments, employees in these departments, departments, employees in each department and the department managers, and the relationship with employees and their title and salaries.

Data Engineering
-Drops the tables if they exists
-Creates the tables with the primary keys
-Recommends next step is to import data from the csv
-Runs ALTER TABLE scripts to add the foreign constraints

Data Analysis
EmployeeDeptQuestions.sql performs the following analysis:
-Employee number, last name, first name, sex, and salary of each employee.
-First name, last name, and hire date for the employees who were hired in 1986.
-Manager of each department along with their department number, department name, employee number, last name, and first name.
-Department number for each employee along with that employee’s employee number, last name, first name, and department name.
-First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-Employee in the Sales department, including their employee number, last name, and first name.
-Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-Frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
