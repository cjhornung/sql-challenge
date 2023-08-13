-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
JOIN salaries
ON  salaries.emp_no = employees.emp_no

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, 
last_name,
hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_managers.dept_no, 
departments.dept_name,
dept_managers.emp_no,
employees.last_name, 
employees.first_name
FROM dept_managers
JOIN departments
ON dept_managers.dept_no = departments.dept_no
JOIN employees 
ON dept_managers.emp_no = employees.emp_no

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.dept_no,
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees 
JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
JOIN departments 
ON departments.dept_no=dept_emp.dept_no

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).