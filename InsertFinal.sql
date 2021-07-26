-- delete from users;
-- delete from payments;
-- delete from invoices;
-- delete from rentalitems;
-- delete from rentals;
-- delete from supply;
-- delete from supplytype;
-- delete from customer;

BEGIN TRANSACTION

insert into supplytype
values('DRL','Drill');
insert into supplytype
values('PNM','Pneumatic');
insert into supplytype
values('ELC','Electrical');
insert into supplytype
values('MSR','Masonry');
insert into supplytype
values('HMR','Hammer');
insert into supplytype
values('SAW','Saw');
insert into supplytype
values('ROD','Rods');
insert into supplytype
values('DSC','Disc');

insert into Supply
values(1,'DRL','Hammer Action',57.8,'A');
insert into Supply
values(2,'HMR','Eastwing Hammer',100,'A');
insert into Supply
values(3,'MSR','Masonry bits',24,'A');
insert into Supply
values(4,'ELC','32 15 AMP fuses',20.1,'A');
insert into Supply
values(5,'DRL','Black and Decker Battery Pack',50,'A');
insert into Supply
values(6,'SAW','6 inch Hacksaw',20,'A');

insert into Customer
values(1,'james','mahoney','hoooch.mahoney@gmail.com','0877173710',0,'A');
insert into Customer
values(2,'henry','rooney','henry123@gmail.com','0854666521',0,'A');
insert into Customer
values(3,'paul','mccarthy','psvm@hotmail.com','0874458896',0,'A');
insert into Customer
values(4,'jason','o brien','jasonOB@live.ie','0866549852',0,'A');

insert into rentals
values(1,1);
insert into rentals
values(3,1);
insert into rentals
values(8,1);
insert into rentals
values(9,1);
insert into rentals
values(10,3);
insert into rentals
values(12,1);
insert into rentals
values(2,1);
insert into rentals
values(4,1);
insert into rentals
values(13,1);
insert into rentals
values(5,1);
insert into rentals
values(6,1);
insert into rentals
values(11,1);
insert into rentals
values(7,1);

insert into rentalitems
values(1,1,1,1,'25-FEB-19','27-FEB-19',115.6,'R');
insert into rentalitems
values(2,1,2,1,'25-FEB-19','02-MAR-19',500,'R');
insert into rentalitems
values(12,8,4,1,'26-FEB-19','27-MAR-19',161,'R');
insert into rentalitems
values(14,3,3,1,'26-FEB-19','02-MAR-19',120,'R');
insert into rentalitems
values(16,10,5,3,'26-FEB-19','08-MAR-19',400,'R');
insert into rentalitems
values(3,2,1,1,'26-FEB-19','04-MAR-19',404.6,'R');
insert into rentalitems
values(10,8,1,1,'26-FEB-19','01-MAR-19',173.4,'R');
insert into rentalitems
values(11,8,2,1,'26-FEB-19','03-MAR-19',500,'R');
insert into rentalitems
values(15,9,1,1,'26-FEB-19','02-MAR-19',231.2,'R');
insert into rentalitems
values(18,12,4,1,'30-MAR-19','01-APR-19',64.4,'R');
insert into rentalitems
values(19,13,4,1,'02-APR-19','04-APR-19',64.4,'R');
insert into rentalitems
values(4,3,3,1,'26-FEB-19','27-FEB-19',24,'R');
insert into rentalitems
values(5,4,4,1,'26-FEB-19','27-FEB-19',32.2,'R');
insert into rentalitems
values(6,5,5,1,'26-FEB-19','27-FEB-19',40,'R');
insert into rentalitems
values(17,11,1,1,'26-FEB-19','27-FEB-19',57.8,'R');
insert into rentalitems
values(7,6,5,1,'25-FEB-19','27-FEB-19',40,'R');
insert into rentalitems
values(8,7,1,1,'25-FEB-19','28-FEB-19',115.6,'R');
insert into rentalitems
values(9,7,2,1,'25-FEB-19','28-FEB-19',200,'R');

insert into invoices
values(8,1,'26-FEB-19',200,'paid');
insert into invoices
values(9,1,'26-FEB-19',161,'paid');
insert into invoices
values(10,1,'26-FEB-19',120,'paid');
insert into invoices
values(11,1,'26-FEB-19',200,'paid');
insert into invoices
values(16,1,'26-FEB-19',64.4,'paid');
insert into invoices
values(4,2,'26-FEB-19',320,'paid');
insert into invoices
values(15,1,'26-FEB-19',722.2,'paid');
insert into invoices
values(17,3,'26-FEB-19',960,'paid');
insert into invoices
values(1,1,'26-FEB-19',615.6,'paid');
insert into invoices
values(3,1,'26-FEB-19',65.2,'paid');
insert into invoices
values(12,1,'26-FEB-19',173.4,'paid');
insert into invoices
values(13,1,'26-FEB-19',500,'paid');
insert into invoices
values(14,1,'26-FEB-19',231.2,'paid');
insert into invoices
values(2,1,'26-FEB-19',404.6,'paid');
insert into invoices
values(5,1,'26-FEB-19',40,'paid');
insert into invoices
values(6,1,'26-FEB-19',40,'paid');
insert into invoices
values(7,1,'26-FEB-19',115.6,'paid');

insert into payments
values(8,8,'26-JUL-19',200);
insert into payments
values(4,4,'25-JAN-19',320);
insert into payments
values(1,1,'26-FEB-19',615.6);
insert into payments
values(7,7,'26-AUG-19',115.6);
insert into payments
values(9,9,'26-DEC-19',161);
insert into payments
values(10,10,'26-SEP-19',120);
insert into payments
values(11,11,'26-OCT-19',200);
insert into payments
values(12,12,'26-NOV-19',173.4);
insert into payments
values(13,13,'26-DEC-19',500);
insert into payments
values(14,14,'26-FEB-19',231.2);
insert into payments
values(15,15,'26-MAR-19',722.2);
insert into payments
values(16,16,'26-APR-19',64.4);
insert into payments
values(2,2,'26-MAR-19',404.6);
insert into payments
values(3,3,'26-MAY-19',56.2);
insert into payments
values(5,5,'26-JUN-19',40);
insert into payments
values(6,6,'26-APR-19',40);

insert into users
values('6E-E4-A4-69-CD-4E-91-05-38-47-F5-D3-FC-B6-1D-BC-C9-1E-8F-0E-F1-0B-E7-74-8D-A4-C4-A1-BA-38-2D-17','6E-E4-A4-69-CD-4E-91-05-38-47-F5-D3-FC-B6-1D-BC-C9-1E-8F-0E-F1-0B-E7-74-8D-A4-C4-A1-BA-38-2D-17',1);
insert into users
values('C3-BC-A1-4C-65-00-63-BB-88-E5-A8-2F-75-7C-11-DE-FA-F4-EA-06-C1-83-68-C9-C9-B7-0C-5D-77-93-3D-D3','C3-BC-A1-4C-65-00-63-BB-88-E5-A8-2F-75-7C-11-DE-FA-F4-EA-06-C1-83-68-C9-C9-B7-0C-5D-77-93-3D-D3',1);

COMMIT;