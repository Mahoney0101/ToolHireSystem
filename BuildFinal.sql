--DROP TABLE payments;
--DROP TABLE invoices;
--DROP TABLE rentalitems;
--DROP TABLE rentals;
--DROP TABLE Supply;
--DROP TABLE Customer;
--DROP table SupplyType;
--DROP table Users;

--prompt "creating Supply table";
BEGIN TRANSACTION

Create table SupplyType(
supply_type varchar(20) not null,
description varchar(50) not null,

CONSTRAINT pk_supp_type PRIMARY KEY (supply_type));

CREATE TABLE Supply(
supply_id numeric NOT NULL,
supply_type varchar(20) NOT NULL,
description varchar(50)NOT NULL,
price numeric(5,2) NOT NULL,
status varchar(1) NOT NULL,
CONSTRAINT pk_supp_id PRIMARY KEY(supply_id),
CONSTRAINT fk_supp_type FOREIGN KEY(supply_type) REFERENCES SupplyType); 


--prompt "creating customer table";
CREATE TABLE Customer(
cust_id numeric NOT NULL,
first_name varchar(20)NOT NULL,
last_name varchar(30)NOT NULL,
e_mail varchar(50)NOT NULL UNIQUE,
phone varchar(13)NOT NULL,
balance numeric (7,2) DEFAULT 0,
account_status varchar(10),
CONSTRAINT pk_cust_id PRIMARY KEY (cust_id));


create table Rentals(
rental_id numeric not null,
cust_id numeric not null,
constraint pk_rental_id primary key (rental_id),
constraint fk_cust_id foreign key (cust_id) references Customer);


CREATE TABLE RentalItems(
item_rental_id numeric not null,
rental_id numeric not null,
supply_id numeric not null,
cust_id numeric not null, 
date_from date not null,
date_to date not null,
Item_cost numeric(7,2) not null,
status varchar(2) not null,
CONSTRAINT pk_rental_item_id primary key(item_rental_id),
constraint fk_rental_id foreign key(rental_id) references rentals,
constraint fk_custom_id foreign key (cust_id) references rentals,
constraint fk_supply_id foreign key (supply_id)references supply);

create table invoices(
transaction_id numeric not null,
cust_id numeric not null,
transaction_date date not null,
amount decimal(7,2) not null,
status varchar(18) not null,
constraint pk_trans_id primary key (transaction_id),
constraint fk_customer_id foreign key (cust_id) references customer);

create table payments(
payment_id numeric not null,
transaction_id numeric not null,
paydate date not null,
amount decimal(5,2),
CONSTRAINT pk_payment_id primary key(payment_id),
constraint fk_transaction_id foreign key (transaction_id)references invoices);

Create table USERS(
user_name varchar(128) not null,
pass_word varchar(128) not null,
level_auth numeric(1) not null,
CONSTRAINT pk_user_name PRIMARY KEY (user_name));

COMMIT;