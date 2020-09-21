-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM PUBLIC."Salaries" AS s
INNER JOIN PUBLIC."Employees" AS e
ON e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date FROM PUBLIC."Employees" AS e
WHERE e.hire_date LIKE '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM PUBLIC."Dept_manager" AS dm
INNER JOIN PUBLIC."Departments" AS d
ON d.dept_no=dm.dept_no
INNER JOIN PUBLIC."Employees" AS e
ON dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM PUBLIC."Employees" AS e
INNER JOIN PUBLIC."Dept_emp" as de
ON de.emp_no = e.emp_no
INNER JOIN PUBLIC."Departments" as d
ON d.dept_no = de.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex FROM PUBLIC."Employees" AS e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM PUBLIC."Employees" AS e
INNER JOIN PUBLIC."Dept_emp" as de
ON de.emp_no = e.emp_no
INNER JOIN PUBLIC."Departments" as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM PUBLIC."Employees" AS e
INNER JOIN PUBLIC."Dept_emp" as de
ON de.emp_no = e.emp_no
INNER JOIN PUBLIC."Departments" as d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.