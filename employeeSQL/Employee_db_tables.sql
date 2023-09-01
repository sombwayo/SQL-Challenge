DROP TABLE departments
CREATE TABLE departments (
    dept_no CHAR(4)   NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30)   NOT NULL
);

CREATE TABLE titles (
    title_id CHAR (5) NOT NULL PRIMARY KEY,
    title VARCHAR(30));

CREATE TABLE employees (
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id CHAR (5) NOT NULL,
    birth_date DATE,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30)  NOT NULL,
    sex VARCHAR(1),
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no));


CREATE TABLE salaries (
    emp_no INT,
    salary FLOAT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);



