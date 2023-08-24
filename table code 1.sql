-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XeJnUv
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE Salaries (
    emp_no int PRIMARY KEY NOT NULL,
    salary int NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE Department (
    dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE Dept_emp (
    emp_no int NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no int NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
    FOREIGN KEY (emp_no) REFERENCES Salaries (emp_no)
);

CREATE TABLE Employees (
    emp_no int NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Salaries (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

