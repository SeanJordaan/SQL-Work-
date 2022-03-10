--Greate Database and add Names--

CREATE TABLE Employees (
    emp_id bigserial CONSTRAINT emp_id_key PRIMARY KEY,
    first_name varchar(20) NOT NULL,
    surname varchar(100) NOT NULL,
    gender varchar(10) NOT NULL,
    address varchar(50) NOT NULL,
    email varchar(50) NOT NULL constraint email_constraint unique, 
    depart_id integer NOT NULL references Department (depart_id),   
    role_id integer NOT NULL references Roles (role_id),
    salary_id integer NOT NULL references Salaries (salary_id),
   overtime_id integer NOT NULL references Overtime_Hours (overtime_id)
);

select * from Employees; 
	
CREATE TABLE Department (
    depart_id bigserial CONSTRAINT depart_id_key PRIMARY KEY,
    depart_name varchar(25) NOT NULL,
    depart_city varchar(50) NOT NULL);

select * from Department;

CREATE TABLE Roles (
    role_id bigserial CONSTRAINT role_id_key PRIMARY KEY,
    role varchar(50) NOT NULL);
	
select * from Roles;	
	
CREATE TABLE Salaries (
    salary_id bigserial CONSTRAINT salary_id_key PRIMARY KEY,
    salary_pa varchar(50) NOT NULL);
	
select * from Salaries;
	
CREATE TABLE Overtime_Hours (
    overtime_id bigserial CONSTRAINT overtime_id_key PRIMARY KEY,
    overtime_hours varchar(50) NOT NULL);
	
select * from Overtime_Hours;
	
--Insert Into  The Tables--

insert into Department (depart_id, depart_name, depart_city) 
values (1, 'Tax', 'Johannesburg'),
	   (2, 'Sales', 'Johannesburg'),
	   (3, 'IT', 'Johannesburg'),
	   (4, 'Design', 'Pretoria'),
	   (5, 'Legal', 'Cape_Town');
	   
insert into Roles (role) 
values ('Admin'),
	   ('Manager'),
	   ('Cable Guy'),
	   ('Advertising'),
	   ('Legal Guy');
	   
insert into Salaries (salary_pa) 
values (5000000),
	   (450000),
	   (900000),
	   (200000),
	   (125456);
	   
insert into Overtime_Hours (overtime_hours) 
values (10),
	   (26),
	   (2),
	   (48),
	   (4);
	  
select * from employees	  
select * from department
select * from roles
select * from salaries
select * from overtime_hours
	  
insert into Employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id) 
values ('Sean', 'Jordaan', 'M', '22 Jump Street', 'jordaan@gmail', 1, 1, 1, 1),
	   ('Hassan', 'Mansoor', 'M', '21 Jump Street', 'hassan@gmail', 2, 2, 2, 2),
	   ('Cam', 'Brown', 'M', '23 Jump Street', 'cam@gmail', 3, 3, 3, 3),
	   ('Byron', 'Knox', 'M', '24 Jump Street', 'knoxx@gmail', 4, 4, 4, 4),
	   ('Kgoro', 'Bra', 'M', '25Jump Street', 'bra@gmail', 5, 5, 5, 5);
	   
	   
select Employees.first_name, Employees.surname, Employees.gender, Employees.address,
Employees.email,Department.depart_name, department.depart_city, Roles.role, salaries.salary_pa, 
Overtime_Hours.overtime_hours
from employees left join department
on employees.depart_id = department.depart_id
left join roles
on employees.role_id = roles.role_id
left join salaries
on employees.salary_id = salaries.salary_id
left join overtime_hours
on employees.overtime_id = overtime_hours.overtime_id;
    	