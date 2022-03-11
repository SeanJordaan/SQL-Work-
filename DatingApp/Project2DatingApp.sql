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
values ('')
       (''),	   
       (''),	   
       (''),
	   (''),
	   (''),
	  (''),
	  (''),
      (''),
	  (''),
       (''),	   
       (''),	   
       (''),
	   (''),
	   (''),
	  (''),
	  (''),
      ('');
	
	
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
values ('') ,
       ('') ,	   
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
values ('Jordaan', 'Sean', 0982727373, 'jordaan@gmail', 'M', 1993)
       ("Bradley Hubbard","(762) 142-3874",'rci.quis.lectus@yahoo.org"),
  ("Zenia Mccarthy","(817) 367-6473","ut@google.com"),
  ("Bert Luna","1-572-375-1722","phasellus.in@google.net"),
  ("Lucius Rodriguez","1-287-704-3616","duis.risus@outlook.org"),
  ("Charde Hardy","1-578-630-1387","cum.sociis@aol.couk");

       ('') NOT NULL,	   
       ('')NOT NULL,	   
       ('')NOT NULL,	   
       ('')NOT NULL
	   ('') NOT NULL,
       ('') NOT NULL,	   
       ('')NOT NULL,	   
       ('')NOT NULL,	   
       ('')NOT NULL;
	

	

	

	
	