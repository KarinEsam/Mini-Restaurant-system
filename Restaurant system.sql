create database Restaurant; 
use Restaurant;

create table Customer
( ID int NOT NULL AUTO_INCREMENT,
Fname varchar(30) NOT NULL ,
Phone varchar(20) NOT NULL,
Email varchar(255),
PRIMARY KEY (ID), 
UNIQUE (Fname) , 
UNIQUE (Phone) );

show tables;
show columns from Customer;

alter table Customer 
add Address varchar(255);

show columns from Customer;

create table Orders(
ID int NOT NULL AUTO_INCREMENT,
Details varchar(225),
customer_id int ,
PRIMARY KEY (ID),
FOREIGN KEY (customer_id) REFERENCES Customer (ID) );

show tables;
show columns from Orders;

INSERT INTO Customer (Fname, Phone , Email) 
VALUES ('Karin', '01222222251', 'K1@yahoo.com');

