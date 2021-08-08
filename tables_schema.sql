CREATE TABLE departments(
    dept_no VARCHAR,
    dept_name VARCHAR);

CREATE TABLE dept_emp(
    emp_no INT,
    dept_no VARCHAR
    
);

CREATE TABLE dept_manager(
    dept_no VARCHAR,
    emp_no INT
    
);

CREATE TABLE employees(
    emp_no INT,
    emp_title VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE salaries(
    emp_no INT,
    salary INT
);

CREATE TABLE titles(
    title_id VARCHAR,
    title VARCHAR
    
);


alter table employees add   CONSTRAINT pk_employees PRIMARY KEY (emp_no );

alter table departments add CONSTRAINT pk_departments PRIMARY KEY (dept_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

© 2021 GitHub, Inc.