REM   Script: Activity 4
REM   SQL Activity 4

create table salesman(salesman_id int, salesman_name varchar2(20), salesman_city varchar2(20), commission int) 
Insert all 
    into salesman values(5001,'James Hoog','New York',15) 
	into salesman values(5002,'Nail Knite','Paris',13) 
	into salesman values(5005,'Pit Alex','London',11) 
	into salesman values(5006,'McLyon','Paris',14) 
	into salesman values(5007,'Paul Adam','Rome',13) 
	into salesman values(5003,'Lauson Hen','San Jose',12) 
select 1 from dual 
select * from salesman 
 
Alter table salesman 
Add (grade int) 
select * from salesman 
 
update salesman set grade = 100;

select * from salesman;

