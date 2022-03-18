--Creating Tables--

CREATE TABLE my_contacts (
    contact_id bigserial CONSTRAINT contact_id_key PRIMARY KEY,
    last_name varchar(20) NOT NULL,
    first_name varchar(100) NOT NULL,
    phone integer NOT NULL,
    email varchar(50) NOT NULL constraint email_constraint unique,
    gender varchar(50) NOT NULL, 
    birthday integer NOT NULL,    
    prof_id integer NOT NULL references profession (prof_id),
    zip_code varchar (4) NOT NULL references zip_code (zip_code),
   status_id integer NOT NULL references status (status_id)
);



CREATE TABLE profession (
    prof_id bigserial CONSTRAINT prof_id_key PRIMARY KEY,
    profession varchar(25) NOT NULL);
	
CREATE TABLE zip_code (
    zip_code varchar (4) CONSTRAINT zip_code_key PRIMARY KEY,
    city varchar(25) NOT NULL,
	province varchar (50) NOT NULL
	);

CREATE TABLE status (
    status_id bigserial CONSTRAINT status_id_key PRIMARY KEY,
    status varchar(25) NOT NULL);
	
CREATE TABLE contact_interest (
    contact_id bigserial references my_contacts (contact_id),
    interets_id bigserial references interest (intrests_id)
); 

drop table contact_intrests; 
	
CREATE TABLE contact_seeking (
    contact_id bigserial references my_contacts (contact_id),
    seeking_id integer references seeking (seeking_id));
	
select * from contact_seeking;
	
CREATE TABLE interest  (
    interest_id bigserial CONSTRAINT interest_id_key PRIMARY KEY,
    interest varchar(25) NOT NULL);
	
select * from interest; 
	
CREATE TABLE seeking (
    seeking_id bigserial CONSTRAINT seeking_id_key PRIMARY KEY,
    seeking varchar(25) NOT NULL);
	
select * From seeking;

CREATE TABLE contact_interest (
   contact_id bigserial references my_contacts (contact_id),
   interest_id integer references interest (interest_id));
   
drop table contact_interest;

select * from status;
	
--Populating The Tables-- 
	
insert into profession (profession) 
values ('Sales'),
       ('Tax'), 
       ('Marketing'),
       ('Law'), 
       ('IT'),
	   ('Psycologist');
	   
select * from profession;	   
	
insert into zip_code (zip_code, city, province)
values ('1234', 'Johannesburg', 'Gauteng'),
       ('2345', 'Pretoria', 'Gauteng'),	   
       ('3456', 'Bloemfontein', 'Free-State'),	   
       ('4567', 'Welkom', 'Free-State'),
	   ('5678', 'Springbok', 'Nothern-Cape'),
	   ('6789', 'Kimberly', 'Nothern-Cape'),
	   ('7891', 'Cape-Town', 'Western-Cape'),
	   ('8912', 'Paarl', 'Western-Cape'),
       ('9123', 'Bisho', 'Eastern-Cape'),
	   ('1345', 'East-London', 'Eastern-Cape'),
       ('2456', 'Bela-Bela', 'Limpopo'),	   
       ('3567', 'Massina', 'Limpopo'),	   
       ('4678', 'Harry-Gwala', 'Kwazulu-Natal'),
	   ('5789', 'Durban', 'Kwazulu-Natal'),
	   ('6891', 'Belfast', 'Mpumalanga'),
	   ('7912', 'Belfour', 'Mpumalanga'),
	   ('8123', 'Delaryville', 'North-West'),
       ('9145', 'Groot-Marico', 'North-West');
	
insert into status(status) 
values ('Single'),
       ('Devorced'),
       ('Single'),
       ('Widdow'),
       ('Taken');
	
insert into interest (interest)
values ('Bowling'),
       ('Criket'),
       ('Rugby'), 
       ('Gym'), 
       ('Cars'), 
	   ('Work'),
	   ('Shopping'),
       ('Coding'),
       ('Painting'),
       ('Cruising'),
       ('Cooking'),
       ('Gardening');

select * from contact_interest;

insert into contact_interest (contact_id, interest_id)
values (18, 7),
(19, 4),
(20, 5),
(21, 1),
(22, 8),
(23, 11),
(24, 10),
(25, 2),
(26, 6),
(27, 12),
(28, 3),
(29, 9),
(30, 3),
(31, 12),
(32, 1),
(18, 1),
(19, 9),
(20, 12),
(21, 2),
(22, 10),
(23, 5),
(24, 8),
(25, 12),
(26, 11),
(27, 5),
(28, 8),
(29, 1),
(30, 2),
(31, 8),
(32, 3),
(31, 3),
(18, 2),
(19, 6),
(20, 7),
(27, 12),
(27, 7),
(28, 8),
(28, 2),
(28, 4),
(29, 9),
(29, 6),
(29, 3),
(30, 5),
(30, 1),
(30, 11);

insert into contact_seeking (seeking_id, contact_id)
values (1,18),
(2,19),
(3,20),
(3,21),
(2,22),
(1,23),
(3,24),
(2,25),
(2,26),
(3,27),
(1,28),
(2,29),
(1,30),
(3,31),
(1,32);
	
insert into seeking (seeking)
values ('Relationship'),
       ('One Night Stand'),
       ('Friendship');

	
insert into my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
values ('Jordaan', 'Sean', 082725689, 'jordaan@gmail', 'M', 1993, 1, 1234, 5),
       ('Jones', 'Suzan', 082547893, 'suzanj@gmail', 'F', 1988, 2, 2345,4 ),
       ('Robot', 'Elliot', 08985, 'mrrobot@gmail', 'M', 1990, 3, 3456, 5), 
       ('Johnson', 'Janet', 0856545, 'jj@gmail', 'F', 1985, 4, 4567, 1),
       ('Durdan', 'Tyler', 011542, 'durdanty@gmail', 'M', 1970, 5, 5678, 3),
       ('Paulson', 'Robert', 054123, 'robert.paulson@gmail0', 'M',1975, 6, 6789, 3),
	   ('Jackman', 'Tracy', 088971, 'tj@gmail','F', 1999, 2, 7891, 5),
	   ('Supertramp', 'Alexander', 0768456, 'superalex@gmail', 'M', 1992, 3, 8912, 1),
	   ('Kray', 'Regenald', 076548, 'regiek@gmail', 'F', 1998, 4, 1345, 5),
	   ('Hubbard', 'Bradley', 08114, 'orci.quis.lectus@yahoo.org', 'F', 1999, 5, 1345, 1),
       ('Mccarthy', 'Zenia', 08336,'ut@google.com', 'F', 2000, 6, 4567, 2),
       ('Luna', 'Bert' , 08537, 'phasellus.in@google.net', 'M', 1985, 3, 6789, 3),
       ('Rodriguez', 'Lucius' , 08270,'duis.risus@outlook.org', 'M', 1999, 6, 1234, 4),
       ('Hardy', 'Charde' , 08663, 'sociis@aol.couk', 'M', 1995, 4, 4567, 5),
       ('Visser', 'Bianca', 086542, 'visserb@gmail', 'F', 2000, 5, 3456, 1);  
	  
	  
	  
	  
	  
--Project 3-- 

- 1

SELECT contact_id, COUNT(contact_id)
FROM my_contacts
GROUP BY contact_id
HAVING COUNT(contact_id) > 1
ORDER BY contact_id;
-- no duplicates found


-- 2

DELETE FROM my_contacts
WHERE contact_id IN
(SELECT contact_id
FROM
(SELECT contact_id,
ROW_NUMBER() OVER(PARTITION BY contact_id
ORDER BY contact_id) AS row_num
FROM my_contacts) t
WHERE t.row_num > 1);


-- 3
-- 4
-- (tables set up and populated in Project 3)


-- 5

WITH RECURSIVE cohort AS (
SELECT contact_id, prof_id, concat(first_name, ' ', last_name) AS full_name
FROM my_contacts
WHERE prof_id = 2
UNION
SELECT e.contact_id, e.prof_id, e.first_name
FROM my_contacts e
INNER JOIN cohort s ON s.contact_id = e.prof_id)
SELECT * FROM cohort;


-- 6

SELECT * 
FROM my_contacts
ORDER BY contact_id
FETCH FIRST ROW ONLY;


-- 7

SELECT my_contacts.contact_id, my_contacts.first_name, profession.profession
FROM my_contacts INNER JOIN profession 
ON my_contacts.prof_id = profession.prof_id
WHERE profession.prof_id = 3
ORDER BY my_contacts.contact_id;


-- 8

SELECT
s1.first_name,
s2.first_name,
s1.proffession
FROM my_contacts s1 INNER JOIN profession s2 
ON s1.contact_id <> s2.contact_id
AND s1.prof_id = s2.prof_id
--'profession' table does not have contact_id but i added (hypothetically)
-- it to this query for the sake of the example.


-- 9

SELECT first_name, city
FROM my_contacts e FULL OUTER JOIN zip_code d 
ON d.zip_code = e.zip_code;


-- 10

SELECT e.zip_code, city
FROM zip_code e FULL OUTER JOIN my_contacts d 
ON e.zip_code = d.zip_code
WHERE d.zip_code IS NULL;


-- 11

SELECT
zip_code.zip_code,
zip_code.city,
zip_code.province,
my_contacts.zip_code
FROM zip_code LEFT JOIN my_contacts 
ON zip_code.zip_code = my_contacts.zip_code;


-- 12

SELECT * FROM profession CROSS JOIN my_contacts;


-- 13

SELECT * FROM my_contacts NATURAL JOIN profession;

--Natural Join Is not a type of join it how the tables will join  It will join in the attributes that are common--

-- 14

SELECT first_name FROM my_contacts
UNION ALL
SELECT zip_code FROM zip_code
ORDER BY first_name ASC;

--Union all combining the result sets from two different queries--

-- 15

SELECT contact_id, first_name
INTO my_contacts_newTable
FROM my_contacts
WHERE gender = 'male';

-- 16

select AVG(status_id)
FROM status
-- 1 = married, 2 = single
-- so there are an even number of married/single people

SELECT random() * 100 + 1 AS RAND_1_100
from generate_series(17,32);


-- 17

SELECT contact_id, prof_id
FROM my_contacts
WHERE prof_id > (
SELECT AVG(prof_id) FROM my_contacts
);


-- 18

SELECT my_contacts, contact_id 
FROM my_contacts
ORDER BY my_contacts DESC limit 5;    --'ASC' to show the smallest table


-- 19

SELECT DISTINCT                -- removed 'ON' - query does not work with it.
contact_id, prof_id
FROM my_contacts
WHERE prof_id > (
SELECT AVG (prof_id) FROM my_contacts);




-- Object-Oriented SQL for Data Complexity

-- 1 (20)

SELECT first_name, interest, count(*)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY ROLLUP(first_name, interest)
ORDER BY first_name


-- 2 (21)

SELECT distinct first_name, count(interest)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY CUBE(first_name, interest)
ORDER BY first_name


-- 3 (22)

CREATE INDEX index_gender ON my_contacts (gender);


-- 4 (23)

SELECT distinct first_name, count(interest)
FROM my_contacts LEFT JOIN contact_interest
ON my_contacts.contact_id = contact_interest.contact_id
LEFT join interests
ON interests.interest_id = contact_interest.interest_id
GROUP BY CUBE(first_name, interest)
HAVING count(interest) > 3 
ORDER BY first_name


-- 5 (24)

CREATE TABLE my_contacts_audit (
    when timestamp NOT NULL,
    user_id    text NOT NULL,
)

CREATE OR REPLACE FUNCTION delete_audit() 
RETURNS TRIGGER AS $delete_audit$
    BEGIN
        INSERT INTO my_contacts_audit SELECT now(), user;
    END;
$delete_audit$ LANGUAGE plpgsql;


CREATE TRIGGER check_delete
AFTER DELETE
ON my_contacts
FOR EACH ROW
EXECUTE PROCEDURE delete_audit();

--6(25)--

SELECT empno + 1
FRO<strong>M</strong> emp a
WHERE NOT EXISTS
(
SELECT NULL
FRO<strong>M</strong> emp b
WHERE a.empno = b.empno + 1
)
ORDER BY empno

--7 (26)--

SELECT
product,
grp_name,
price,
RANK () OVER (
PARTITION BY grp_name
ORDER BY
price
)
FRO<strong>M</strong>
substances
INNER JOIN products USING (productid);

--8(27)--

SELECT
product,
grp_name,
price,
DENSE_RANK () OVER (
PARTITION BY grp_name
ORDER BY
price
)
FRO<strong>M</strong>
substances
INNER JOIN products USING (productid);

--9(28)--

SELECT
product,
grp_name,
price,
FIRST_VALUE(price) OVER (
PARTITION BY grp_name
ORDER BY
price
) AS low_price
FRO<strong>M</strong>
substances
INNER JOIN products USING (productid);

--10 (29)--

SELECT
product,
grp_name,
price,
LAST_VALUE(price) OVER (
PARTITION BY grp_name
ORDER BY
price RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED
FOLLOWING
) AS high_price
FRO<strong>M</strong>
substances
INNER JOIN products USING (productid);

--11 (30)--

EXPLAIN SELECT * FROM emp1;
QUERY PLAN
Seq Scan on emp1 (cost=0.00..451.00 rows=15000
width=364)

--12(31)--

CREATE ROLE Sean
LOGIN
PASSWORD 'myPass1';

SELECT rolname FROM pg_roles;

--13(32)--

CREATE ROLE emp;
GRANT emp TO Sean;