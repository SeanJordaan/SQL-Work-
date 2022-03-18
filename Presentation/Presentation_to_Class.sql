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
	
CREATE TABLE contact_seeking (
    contact_id bigserial references my_contacts (contact_id),
    seeking_id integer references seeking (seeking_id)
);
	
CREATE TABLE interest  (
    interest_id bigserial CONSTRAINT interest_id_key PRIMARY KEY,
    interest varchar(25) NOT NULL);
	
 

CREATE TABLE seeking (
    seeking_id bigserial CONSTRAINT seeking_id_key PRIMARY KEY,
    seeking varchar(25) NOT NULL);
	


CREATE TABLE contact_interest (
   contact_id bigserial references my_contacts (contact_id),
   interest_id integer references interest (interest_id));
   
	
--Populating The Tables-- 
	
insert into profession (profession) 
values ('Sales'),
       ('Tax'), 
       ('Marketing'),
       ('Law'), 
       ('IT'),
	   ('Psycologist');
	   	   
	
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
	   
	   
	   
-- Presentation--

-- 13 Questions--

SELECT * FROM my_contacts NATURAL JOIN profession;

--Natural Join Is not a type of join it how the tables will join  It will join in the attributes that are common--

-- 14 Questions--

SELECT first_name FROM my_contacts
UNION ALL
SELECT zip_code FROM zip_code
ORDER BY first_name ASC;

--Union all combining the result sets from two different queries--

-- 15 Questions---

SELECT contact_id, first_name
INTO my_contacts_newTable
FROM my_contacts
WHERE gender = 'M';

--Check if it Worked--

select * from my_contacts_newTable;

	  
	  
	  