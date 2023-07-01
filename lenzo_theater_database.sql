create table customer (
	customer_id SERIAL primary key,
	customer_first varchar(100),
	customer_last varchar(100),
	customer_email varchar(150),
	customer_phone varchar(15)
);

-- Table for all orders in the theater (both concessions and tickets)
create table theaterOrder (
	order_id SERIAL primary key,
	customer_id integer not null, 
	order_time_date timestamp default current_timestamp,
	order_subtotal numeric(6,2),
	order_tax numeric(6,2),
	order_total_charged numeric(6,2),
	foreign key(customer_id) references customer(customer_id)
);

--- Inventory of all concession items sold
create table concessionItem (
	item_id integer primary key,
	item_name VARCHAR(100),
	item_price numeric(6,2),
	item_stock integer
);

--- Table of all individual item concession purchases
create table concessionPurchase (
	item_purchase_id SERIAL primary key,
	order_id integer not null,
	item_id integer not null,
	con_item_quantity integer,
	foreign key(order_id) references theaterOrder(order_id),
	foreign key(item_id) references concessionItem(item_id)
);

create table screen (
	screen_id integer primary key,
	screen_seating_cap integer,
	screen_3d_capable BOOLEAN
);

create table distributor (
	distributor_id integer primary key,
	distributor_name varchar(100),
	distributor_address varchar(200),
	distributor_phone varchar(15),
	distributor_contact varchar(150),
	distributor_website varchar(150)
);

create table movie (
	movie_id SERIAL primary key,
	movie_title varchar(150),
	movie_runtime time,
	distributor_id integer not null,
	foreign key(distributor_id) references distributor(distributor_id)
);

create table screening (
	screening_id SERIAL primary key,
	movie_id integer not null,
	screen_id integer not null,
	screening_seats_avail integer,
	screening_start_time time,
	screening_end_time time,
	screening_date date,
	screening_price numeric(6,2),
	foreign key(movie_id) references movie(movie_id),
	foreign key(screen_id) references screen(screen_id)	
);

create table ticketPurchase (
	ticket_id SERIAL primary key,
	movie_id integer not null,
	screening_id integer not null,
	customer_id integer not null,
	order_id integer not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(screening_id) references screening(screening_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(order_id) references theaterOrder(order_id)
);


