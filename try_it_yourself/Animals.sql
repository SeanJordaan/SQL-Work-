CREATE TABLE Animals (
id bigserial,
Animal varchar(25),
Origin varchar(50),
Recieved date,
Weight numeric
);

INSERT INTO Animals (animal, origin, recieved, weight)
VALUES ('Lion', 'Africa', '2011-10-30', 450),
		('Tiger', 'Asia', '2010-11-11', 600),
		('Brown Baer', 'North America', '2012-02-24', 900);
		
select * from animals;

INSERT INTO Animals (animal, origin, recieved, weight)
VALUES ('Owl', 'Africa', '2011-10-30', 50),
		('Dove', 'Asia', '2010-11-11', 10),
		('Deer', 'North America', '2012-02-24', 1400);
		

