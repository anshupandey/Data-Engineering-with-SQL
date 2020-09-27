
use sept2020;
CREATE TABLE customers (
    Customerid INT NOT NULL,
    Name VARCHAR(30) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(200),
    Salary NUMERIC(30),
    PRIMARY KEY (Customerid)
);

DESC customers;


CREATE TABLE orders (
    Oid INT NOT NULL,
    Date DATETIME NOT NULL,
    Customerid INT NOT NULL,
    Amount NUMERIC(20),
    PRIMARY KEY (Oid)
);

insert into customers values(1, "John",32, "New York", 12455);
insert into customers values(2, "Robert",25, "London", 48755);
insert into customers values(3, "Juan",28, "Paris", 13525);
insert into customers values(4, "Cello",18, "Jakarta", 78925);
insert into customers values(5, "Oscar",39, "Singapore", 13655);
insert into customers values(6, "Anshu",42, "Delhi", 12455);
insert into customers values(7, "Rahul",21, "Kualalumpur", 78555);

select * from customers;


insert into orders values(105, "20191012",3,2000);
insert into orders values(100, "20190202",3,5400);
insert into orders values(106, "20191121",2,3210);
insert into orders values(112, "20191226",6,7840);
insert into orders values(110, "20190312",1,1000);
insert into orders values(109, "20190521",4,6300);
insert into orders values(120, "20190521",9,8700);

select * from orders;
select * from customers;

/***** How to join two table ***/

select Name,Age,oid,date,amount from customers,orders where customers.Customerid = orders.customerid;
select customers.Customerid,Name,Age,oid,date,amount from customers,orders where customers.Customerid = orders.customerid;
#order data by orderid
select customers.Customerid,Name,Age,oid,date,amount from customers,orders where customers.Customerid = orders.customerid order by Customerid;


# INNER JOIN
select customers.Customerid,Name,Age,Salary from customers inner join orders on customers.Customerid = orders.customerid;


# LEFT JOIN
select customers.Customerid,Name,Age,Salary,Amount,Date from customers left join orders on customers.Customerid = orders.customerid;

# RIGHT JOIN
select customers.Customerid,Name,Age,Salary,Amount,Date from customers right join orders on customers.Customerid = orders.customerid;

# FULL JOIN
select customers.Customerid,Name,Age,Salary,Amount,Date from customers left join orders on customers.Customerid = orders.customerid
union
select customers.Customerid,Name,Age,Salary,Amount,Date from customers right join orders on customers.Customerid = orders.customerid;


# creating a new table and store results
create table finaldata select customers.Customerid,Name,Age,Salary,Amount,Date from customers left join orders on customers.Customerid = orders.customerid
union
select customers.Customerid,Name,Age,Salary,Amount,Date from customers right join orders on customers.Customerid = orders.customerid;

select * from finaldata;
