# How to import a CSV file into MySQL

show global variables like "local_infile";
set global local_infile=1;
show global variables like "local_infile";

use sept2020;
drop table onlineretail;
CREATE TABLE onlineretail (
    InvoiceNo INT,
    StockCode VARCHAR(20),
    Description VARCHAR(200),
    Quantity NUMERIC,
    InvoiceDate datetime,
    UnitPrice NUMERIC,
    CustomerID NUMERIC,
    Country VARCHAR(40)
);

load data local infile "E:/MLIoT/ML/dataset/Online Retail.csv" into table onlineretail
character set latin1 fields terminated by ',' enclosed by '"' lines terminated by "\r\n" ignore 1 lines
(InvoiceNo,StockCode,Description,Quantity,@tmp_date,UnitPrice,CustomerID,Country)
set InvoiceDate = str_to_date(@tmp_date,'%d-%m-%Y %h:%i');


select * from onlineretail;
select count(*) from onlineretail;

select * from onlineretail where CustomerID=17850 and InvoiceDate>2010-12-01 and InvoiceDate>2010-12-02 ;
#select customers.Customerid,Name,Age,Salary from customers inner join orders on customers.Customerid = orders.customerid where customerid=4;
