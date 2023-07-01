insert into customer(
	customer_first,
	customer_last,
	customer_email,
	customer_phone
) values (
	'Jackie',
	'Smartypants',
	'jackie@pants.com',
	'333-333-3333'
)

insert into concessionitem (
	item_id,
	item_name,
	item_price,
	item_stock 
) values (
	23,
	'popcorn',
	5.99,
	40
)

insert into distributor  (
	distributor_id,
	distributor_name,
	distributor_contact
) values (
	1,
	'Becky Film Distributors',
	'Becky Smith'
)

insert into movie (
	movie_title,
	movie_runtime,
	distributor_id
) values (
	'The Happy People Party',
	'01:23',
	1
)



insert into theaterorder (
	customer_id
	) values (
	1
	);


insert into concessionpurchase (
	order_id,
	item_id,
	con_item_quantity 
) values (
	1,
	23,
	1
);

select * from concessionpurchase

insert into screen (
	screen_id,
	screen_seating_cap,
	screen_3d_capable 
) values (
	1,
	100,
	False
)

insert into screening (
	movie_id,
	screen_id,
	screening_seats_avail,
	screening_start_time,
	screening_end_time,
	screening_date,
	screening_price 
) values (
	1,
	1,
	99,
	'13:20',
	'15:00',
	'01-01-2024',
	05.99
);

insert into ticketpurchase (
	movie_id,
	screening_id,
	customer_id,
	order_id
) values (
	1,
	1,
	1,
	1
)



