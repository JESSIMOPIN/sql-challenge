-- Create departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create dept_managers table
CREATE TABLE dept_managers (
    dept_no VARCHAR(10),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(255)
);