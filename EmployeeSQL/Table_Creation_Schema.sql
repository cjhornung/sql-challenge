-- Table creation schema

-- titles table creation
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

select * from titles;

-- Employees table creation
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	PRIMARY KEY (emp_no)
);
select * from employees;

-- Departments table creation
DROP TABLE departments;

CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments;

-- dept_emp table creation 
DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;

-- salaries table creation 
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

-- dept_managers table creation

DROP TABLE dept_managers;

CREATE TABLE dept_managers (
 dept_no VARCHAR (30),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers;


