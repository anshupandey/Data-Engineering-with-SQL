 # Data Agregation and statistics
 use sept2020;
 
select * from students;
insert into students values(5,"John","john@gmail.com","Male","London",35);
insert into students values(6,"Lia","lia@gmail.com","Female","New York",28);
insert into students values(7,"Windy","windy@gmail.com","Female","Mumbai",42);
insert into students values(8,"kelly","kelly@gmail.com","Female","Jakarta",46);
insert into students values(9,"felly","felly@gmail.com","Female","Jakarta",21);

select * from students;

# statistics
select min(Age) from students;
select max(Age) from students;
select sum(Age) from students;
select avg(Age) from students;
select stddev(Age) from students;
select min(Age) from students;
select count(Age) from students;
select POW(Age,2) from students;


# Group by operation
select * from students;
select City,avg(age) from students group by City;
select Gender,avg(age) from students group by Gender;
# count male and female students
select Gender,Count(id) from students group by Gender;

# order by clause
# sorting the table by age
select * from students order by Age;
select * from students order by Age desc;
select Gender,avg(age) from students group by Gender order by avg(Age) desc;

# create a new col
select Id,Name,Age,Age*2 as new_age from students;

select * from students;


