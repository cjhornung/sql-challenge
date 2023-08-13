-- Table creation schema

-- Employees table creation
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
select * from employees;