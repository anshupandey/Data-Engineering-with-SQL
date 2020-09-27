# String operations in MySQL

# concatenate string
select concat("hello ","world");
# concatenate with separater
select concat_ws(",","Python","MySQL","Tableau");
#inserting a string in another string
select insert("Pythonprogramming",2,5,"hello");
# checking length of string
select length("hello world");
# REPEAT
select repeat("mySQL ",5);
#reverse
select reverse("mySQL");
# substring
select substring("NewYork",4);
# trim
select trim("python    ");
#upper
select upper("hello");
#lower
select lower("HIksekHIOieh");