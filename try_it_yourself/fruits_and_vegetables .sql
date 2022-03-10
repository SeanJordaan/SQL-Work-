CREATE TABLE fruits_and_vegetables(
	timestamp_column timestamp with time zone,
    interval_column interval
    );


INSERT INTO fruits_and_vegetables
VALUES
('2018-12-31 01:00 EST','2 days'),
('2018-12-31 01:00 -8','1 month'),
('2018-12-31 01:00 Australia/Melbourne','1 century'),
(now(),'1 week');

select * from fruits_and_vegetables

--smallint
--Vachar= string data type ,it will be easier to sort
--syntax error 
