CREATE DATABASE analysis;

CREATE TABLE teachers (
id bigserial,
first_name varchar(25),
last_name varchar(50),
school varchar(50),
hire_date date,
salary numeric
);
	
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
       ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
       ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
       ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
       ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
       ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
	   
select * from teachers;

select first_name, last_name, school from teacher;

select distinct school 
from teachers;

select distinct school, salary 
from teachers; 

select first_name, last_name, salary
from teachers 
order by salary desc;

select last_name, school, hire_date 
from teachers
order by school asc, hire_date desc;

select last_name, school, hire_date
from teachers
where school = 'Myers Middle School'

select last_name, school, salary
from teachers
where salary between 20000 and 40000

select * from teachers where school = 'Myers Middle School' and salary <40000

select *
from teachers
where school ='Myers Middle School' 

select first_name, last_name, school, hire_date, salary 
from teachers 
where school like '%roos%'

create database try_it_yourself;

