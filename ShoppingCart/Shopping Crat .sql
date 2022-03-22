CREATE TABLE price_list (
    item_id bigserial CONSTRAINT item_id_key PRIMARY KEY,
    item_cost integer  NOT NULL,
	item varchar (30)
);

select * from cart;

CREATE TABLE users (
    user_id bigserial CONSTRAINT user_id_key PRIMARY KEY,
    last_name varchar(20) NOT NULL,
    first_name varchar(100) NOT NULL,
	email varchar(50) NOT NULL constraint email_constraint unique
);

CREATE TABLE cart (
    item_id integer NOT NULL references price_list (item_id),
    user_id integer NOT NULL references users (user_id)
);

insert into price_list (item_id, item_cost, item)
values (1, 7.5, 'Coke'),
        (2, 9.5, 'Kit Kat'),
		(3, 8.5, 'Bar One'),
		(4, 7.5, 'Fanta');
		
select * from price_list;
		
insert into users (user_id, last_name, first_name, email)
values (1, 'Jordaan', 'Sean', 'jordaansean@gmail'),
       (2, 'Mansoor', 'Hassan', 'masoorhas@gmail'),
	   (3, 'Knox', 'Byron', 'knoxbyron@gmail'),
	   (4, 'Brown', 'Cam', 'browncam@gmail');
	   
	   
select * from users;

select email from usuers; 
	   
insert into cart (item_id, user_id)
values (1,2),
        (1,1),
        (2,1),
		(3,4),
		(4,1);
		
select item_id from cart;
select user_id from cart;
		
drop table cart;
		
select item, item_cost from price_list;

CREATE TABLE add_to_cart (
    user_id bigserial CONSTRAINT user_id_key2 PRIMARY KEY,
	item_cost integer  NOT NULL,
	item varchar (30),
    first_name varchar(100) NOT NULL
);

drop table add_to_cart;

insert into add_to_cart(user_id, first_name, item, item_cost)
select users.user_id, users.first_name, price_list.item_id, price_list.item_cost
from users left join price_list
on users.user_id = price_list.item_id;

2



		


