REM   Script: Activity 9
REM   SQL Activity 9

create table salesman(salesman_id int, salesman_name varchar2(20), salesman_city varchar2(20), commission int) ;

Insert all  
    into salesman values(5001,'James Hoog','New York',15)  
	into salesman values(5002,'Nail Knite','Paris',13)  
	into salesman values(5005,'Pit Alex','London',11)  
	into salesman values(5006,'McLyon','Paris',14)  
	into salesman values(5007,'Paul Adam','Rome',13)  
	into salesman values(5003,'Lauson Hen','San Jose',12)  
select 1 from dual ;

Alter table salesman  
Add (grade int)  
select * from salesman;

update salesman set grade = 100;

update salesman set grade = 200 where salesman_city = 'Rome';

update salesman set grade = 300 where salesman_name = 'James Hoog';

update salesman set salesman_name = 'Pierre' where salesman_name = 'McLyon';

create table orders(  
    order_no int primary key, purchase_amount float, order_date date,  
    customer_id int, salesman_id int);

INSERT ALL  
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)   
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005)  
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001)  
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003)  
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001)  
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001)  
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006)  
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003)  
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002)  
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007)  
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001)  
SELECT 1 FROM DUAL;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

select a.salesman_name,b.customer_name from salesman a, customers b where a.salesman_id=b.salesman_id;

select a.customer_name, b.salesman_name from customer a inner join salesman b  
where a.salesman_id=b.salesman_id;

select a.customer_name, b.salesman_name from customer a inner join salesman b  
on a.salesman_id=b.salesman_id;

select a.customer_name, b.salesman_name from customers a inner join salesman b  
on a.salesman_id=b.salesman_id;

select a.customer_name, b.salesman_name from customers a left outer join salesman b  
on a.salesman_id=b.salesman_id 
where b.grade<300 order by a.customer_id;

select a.customer_name, b.salesman_name from customers a left outer join salesman b  
on a.salesman_id=b.salesman_id 
where a.grade<300 order by a.customer_id;

select a.customer_id,a.customer_name,a.grade,b.salesman_name from customers a left outer join salesman b  
on a.salesman_id=b.salesman_id 
where a.grade<300 order by a.customer_id;

select a.customer_id,a.customer_name,b.salesman_name,b.commission from customers a inner join salesman b  
on a.salesman_id=b.salesman_id 
where b.commission>12;

select a.customer_id,a.customer_name,b.salesman_name,b.commission from customers a left outer join salesman b  
on a.salesman_id=b.salesman_id 
where b.commission>12;

select a.order_no, a.order_date, a.purchase_amount, b.customer_name, c.salesman_name, c.commission 
from orders a inner join customers b on a.customer_id=b.customer_id 
inner join salesman c on a.salesman_id=c.salesman_id;

