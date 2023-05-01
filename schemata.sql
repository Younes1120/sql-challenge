-- create titles table
CREATE TABLE titles (
	title_id varchar PRIMARY KEY,
	title varchar
);

-- create employees table
CREATE TABLE employees (
	emp_no varchar PRIMARY KEY,
	emp_title_id varchar references titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

-- create departments table
CREATE TABLE departments (
	dept_no varchar PRIMARY KEY,
	dept_name varchar
);

-- create department managers table
CREATE TABLE dept_manager (
	dept_no varchar references departments(dept_no),
	emp_no varchar
);

-- create department employees table
CREATE TABLE dept_emp (
	emp_no varchar references employees(emp_no),
	dept_no varchar references departments(dept_no)
);

-- create salaries table
CREATE TABLE salaries (
	emp_no varchar references employees(emp_no),
	salary int
);