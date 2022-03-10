CREATE TABLE departments (
dept_id bigserial,
dept varchar(100),
city varchar(100),
CONSTRAINT dept_key PRIMARY KEY (dept_id),
CONSTRAINT dept_city_unique UNIQUE (dept, city)
);

INSERT INTO departments (dept, city)
VALUES
('Tax', 'Johannesburg'),
('IT', 'Pretoria'),
('Sales', 'Johannesburg'),
('Marketing', 'Cape Town'),
('Logistics', 'Bloem'),
('Invoicing', 'Fourways');

select * from departments;

CREATE TABLE employees (
emp_id bigserial,
first_name varchar(100),
last_name varchar(100),
salary integer,
dept_id integer REFERENCES departments (dept_id),
CONSTRAINT emp_key PRIMARY KEY (emp_id),
CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);

INSERT INTO employees (first_name, last_name, salary, dept_id)
VALUES
('Nancy', 'Jones', 62500, 1),
('Lee', 'Smith', 59300, 2),
('Soo', 'Nguyen', 83000, 3),
('Janet', 'King', 95000, 4),
('Selo', 'Nkloku', 83000, 5),
('Jason', 'King', 95000, 6);

select * from employees;

SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;

Select employees.emp_id, employees.first_name
       employees.last_name, employees.salary, 
       department.dept, department.city
From employees join departments
on employees.dept_id = departments.dept_id 

