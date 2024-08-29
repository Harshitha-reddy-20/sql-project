
/*Inserting values*/

-- Users table
insert into users values(1,"Divya","divyabharathi392@gmail.com","2022-05-18");
insert into users values(2,"Swathi","swathips20@gmail.com","2020-11-04");
insert into users values(3,"keerthi","keerthir461@gmail.com","2023-06-14");
insert into users values(4,"shivasai","shivasai5669@gmail.com","2021-07-20");
insert into users values(5,"jaswanth","jassudr04@gmail.com","2023-04-11");

-- Products table
insert into products values(101,1,"Laptop",70000.00,25);
insert into products values(102,2,"Earrings",2500.00,15);
insert into products values(103,3,"Headphones",15000.00,30);
insert into products values(104,4,"Watch",25000.00,10);
insert into products values(105,5,"Shoes",5000.00,27);

-- Orders table
insert into orders values(1001,1,70000.00);
insert into orders values(1002,2,2500.00);
insert into orders values(1003,3,15000.00);
insert into orders values(1004,4,25000.00);
insert into orders values(1005,5,5000.00);


select * from orderdetails;

-- Orderdetails table
insert into orderdetails values(10001,1001,101,25,70000.00);
insert into orderdetails values(10002,1002,102,15,2500.00);
insert into orderdetails values(10003,1003,103,30,15000.00);
insert into orderdetails values(10004,1004,104,10,25000.00);
insert into orderdetails values(10005,1005,105,27,5000.00);
