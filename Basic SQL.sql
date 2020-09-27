# i am comment
# creating a database
create database sept2020;
use sept2020;

# create a table with the name students in the database;
create table students(Srnum int, Name varchar(30), Age int, Address varchar(100));

desc students;

# delete the table
drop table students;

/***************************************************************/
CREATE TABLE students (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Age INT,
    Gender VARCHAR(20),
    PRIMARY KEY (ID)
);

desc students;

/************ ALTER Command ************/
# add a new column

alter table students add City varchar(30);
describe students;

# delete a specific column
alter table students drop Age;
desc students;

#Modify the column
alter table students modify Email varchar(100);
desc students;

# rename a column
alter table students change Email Email_Address varchar(100);
desc students;

/********************************* INSERT ************************************/
insert into students (Id,Name,Email_address,Gender,City) values (1,"Anshu","anshu@bootup.ai",'Male',"Mumbai");
select * from students;

# OR
insert into students values (2,"Felix","felix@abccompany.com","Male","Jakarta");
select * from students;

# OR
insert into students (Name,Email_address,Gender,City) values("Shely","shely@abcxyz.com","Female","Jakarta");
select * from students;

# OR
insert into students(Name, Gender, City) values("Ian","Male","London");
select * from students;

# OR
insert into students(Name,Email_address, City) values("Defir","defir@microsoft.com","London");
select * from students;

/*********************** UPDATE *********************************/

#  update a value in the table
update students set City="New York" where Id = 5;
select * from students;

update students set Email_address="shely@google.com", City="San Fransisco" where Id=3;
select * from students;

/******************************** DELETE ******************/


insert into students(Name,Email_address, Gender,City) values("Amir","amir@microsoft.com","Male","Moscow");
select * from students;

# delete a particular row
delete from  students where Id=6;
select * from students;


# delete a particular row
delete from  students where Id=3;
select * from students;

# reset the primary key after alteration
alter table students drop Id;
alter table students add Id int unsigned not null auto_increment primary key first;
select * from students;

/********************************************** SELECT ************************/
# select command
select * from students;
select Id,Name,City from students;
select Id,Name,City from students limit 3;

# Filtering data using select command
select * from students where Gender="Male";
select * from students where City="Jakarta";
select Name,Email_address from students where Gender="Male";

alter table students add Age int;
select * from students;
update students set Age = 45 where Name="Anshu";
update students set Age = 22 where Name="Felix";
update students set Age = 21 where Name="Ian";
update students set Age = 20 where Name="Defir";

select * from students;
select * from students where Age<30;

# filtering based on multiple conditions
# ANd condition
select * from students where Age <30 and Gender="Male";

# OR Condition
select * from students where Age <30 or Gender="Male";





