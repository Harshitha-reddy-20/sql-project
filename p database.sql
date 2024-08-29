create database project; 
use project;
create table Users(user_id int primary key,username varchar(50)not null,email varchar(100)not null,created_at date not null); 
create table Products(product_id int primary key,user_id int,product_name varchar(100)not null,price decimal(10,2)not null,quantity int not null,foreign key(user_id)references Users(user_id)); 
create table Orders(order_id int primary key,user_id int,total_amount decimal(10,2)not null,foreign key(user_id) references Users(user_id)); 
create table Orderdetails(order_detail_id int primary key,order_id int,product_id int,quantity int not null,price decimal(10,2)not null,foreign key(order_id)references Orders(order_id),foreign key(product_id)references Products(product_id)); 
