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
    interest_id integer references interest (intrests_id)
); 

drop table contact_intrests; 
	
CREATE TABLE contact_seeking (
    contact_id bigserial references my_contacts (contact_id),
    seeking_id integer references seeking (seeking_id));
	
CREATE TABLE interest  (
    interest_id bigserial CONSTRAINT interest_id_key PRIMARY KEY,
    interest varchar(25) NOT NULL);
	
drop table interest; 
	
CREATE TABLE seeking (
    seeking_id bigserial CONSTRAINT seeking_id_key PRIMARY KEY,
    seeking varchar(25) NOT NULL);

CREATE TABLE contact_interest (
   contact_id bigserial references my_contacts (contact_id),
   interest_id integer references interest (interest_id));
   
drop table contact_interest;

	
--Populating The Tables-- 
	
insert into proffesion (proffesion) 
values ('Sales')
       ('Tax'), 
       ('Marketing'),
       ('Law'), 
       ('IT');
	
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
values ('Single')
       ('Devorced'),
       ('Single'),
       ('Widdow'),
       ('Taken');
	
insert into contact_intrest(intrest_id)
values ('Bowling'),
       ('Criket'),
       ('Rugby'), 
       ('Gym'), 
       ('Cars'), 
	   ('Work');
	
insert into contact_seeking (seeking)
values (1,3),
	   (1,2),
	   (2,4),
	   (2,3),
	   (2,5);
	   
	
insert into intrest (intrest)
values (''),
       (''),	   
       (''),	   
       (''),	   
       ('');
	
insert into seeking (seeking)
values (''),
       (''),	   
       (''),	   
       (''),	   
       ('');
	
insert into my contacts (last_name, first_name, phone, email, gender, birhtday)
values ('Jordaan', 'Sean', 0982727373, 'jordaan@gmail', 'M', 1993),
       ('Jone', 'Suzan', 0825454789, 'suzanj@gmail', 'F', 1988),
       ('Robot', 'Elliot', 089565485, 'mrrobot@gmail', 'M', 1990), 
       ('Johnson', 'Janet', 0865456545, 'jj@gmail', 'F', 1985)
       ('Durdan', 'Tyler', 0115856542, 'durdanty@gmail', 'M', 1970),
       ('Paulson', 'Robert', 0895654123, 'robert.paulson@gmail0', 'M',1975),
	   ('Jackman', 'Tracy', 0826548971, 'tj@gmail','F', 1999),
	   ('Supertramp', 'Alexander', 072321568456, 'superalex@gmail', 'M', 1992),
	   ('Kray', 'Regenald', 0765482525, 'regiek@gmail', 'F', 1998),
	   ('Hubbard', 'Bradley', 0811423874, 'orci.quis.lectus@yahoo.org', 'F', 1999),
       ('Mccarthy', 'Zenia', 0833676473,'ut@google.com', 'F', 2000),
       ('Luna', 'Bert' , 0853751722, 'phasellus.in@google.net', 'M', 1985),
       ('Rodriguez', 'Lucius' , 0827043616,'duis.risus@outlook.org', 'M', 1999),
       ('Hardy', 'Charde' , 0866301387, 'cum.sociis@aol.couk', 'M', 1995),
       ('Visser', 'Bianca', 0865475682, 'visserb@gmail', 'F', 2000);  
       	

	
	