REM   Script: SQL activities
REM   SQL activities

create table salesman(salesman_id int,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

insert all  
into salesman values (5001 ,'James Hoog','New York',15)  
into salesman values (5002 ,'Nail Knite','Paris',13)  
into salesman values (5005 ,'Pit Alex','London',11)  
into salesman values (5006 ,'McLyon','Paris',14)  
into salesman values (5007 ,'Paul Adam','Rome',13)  
into salesman values (5003 ,'Lauson Hen','San Jose',12)  
SELECT 1 FROM DUAL;

select * from salesman;

select salesman_id,salesman_city from salesman ;

select * from salesman where salesman_city = 'Paris' ;

select salesman_id,commission from salesman where salesman_name = 'Paul Adam';

Alter table salesman add grade int;

select * from salesman;

update salesman set grade = 100;

commit


select * from salesman;

update salesman set grade = 200 where salesman_city = 'Rome';

update salesman set grade = 300 where salesman_name = 'James Hoog';

update salesman set salesman_name = 'Pierre'  where salesman_name = 'McLyon ';

commit


select * from salesman;

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

select * from orders;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount BETWEEN 1000 AND 2000;

select distinct salesman_id from orders;

select sum(purchase_amount) as "TOTAL" from orders;

select avg(purchase_amount) as "AVG" from orders;

select max(purchase_amount) as "MAX" from orders;

select MIN(purchase_amount) AS "Minumum" from orders;

select COUNT(distinct salesman_id) AS "Total count" from orders;

select max(purchase_amount)as "MAX",CUSTOMER_ID  from orders group by CUSTOMER_ID;

select max(purchase_amount) as "MAX",SALESMAN_ID,order_date from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id,order_date;

select max(purchase_amount)as "MAX",CUSTOMER_ID ,order_date from orders group by CUSTOMER_ID,order_date having max(purchase_amount) in (2030, 3450, 5760, 6000);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

insert ALL  
into customers values (3002, 'Nick Rimando', 'New York', 100, 5001) 
into customers values (3007, 'Brad Davis', 'New York', 200, 5001) 
into customers values (3005, 'Graham Zusi', 'California', 200, 5002) 
into customers values (3008, 'Julian Green', 'London', 300, 5002) 
into customers values (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
into customers values (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
into customers values (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
into customers values (3001, 'Brad Guzan', 'London', 300, 5005) 
select 1 from DUAL;

select a.customer_id ,a.customer_name, a.city , b.salesman_name,a.grade from customers a left outer join salesman b on a.salesman_id = b.salesman_id where a.grade<300 order by a.customer_id asc;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name , b.grade, c.salesman_name, c.commission FROM orders a INNER JOIN customers b ON a.customer_id=b.customer_id INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

select a.customer_id ,a.customer_name, a.city , b.salesman_name,a.grade from customers a left outer join salesman b on a.salesman_id = b.salesman_id where a.grade<300 order by a.customer_id asc;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name , b.grade, c.salesman_name, c.commission FROM orders a INNER JOIN customers b ON a.customer_id=b.customer_id INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

select a.customer_id ,a.customer_name, a.city , b.salesman_name from customers a inner join salesman b on a.salesman_id = b.salesman_id;

select a.customer_id ,a.customer_name, a.city , b.salesman_name,a.grade from customers a left outer join salesman b on a.salesman_id = b.salesman_id where a.grade<300 order by a.customer_id asc;

select a.customer_id ,a.customer_name, a.city , b.salesman_name,b.commission from customers a inner join salesman b on a.salesman_id = b.salesman_id where b.commission<12;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name , b.grade, c.salesman_name, c.commission FROM orders a INNER JOIN customers b ON a.customer_id=b.customer_id INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

select * FROM orders WHERE salesman_id in (select DISTINCT salesman_id FROM customers WHERE customer_id=3007);

select * from orders where salesman_id in (select salesman_id from salesman where salesman_city = 'New York');

select count(customer_id) from customers where grade > (select avg(grade) from customers where city = 'New York');

select * from orders where salesman_id IN (select salesman_id from salesman where commission in (select max(commission) from salesman));

