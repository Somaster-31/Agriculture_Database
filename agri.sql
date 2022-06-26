-- Creating database 

-- Table for agricultural products
Create table agricultural_products(product_id number(10), farm_id
number(10), product_type varchar(20), farm_address varchar2(50));
alter table agricultural_products add constraint pk_pid primary key(product_id); 
alter table agricultural_products add constraint u_fid unique(farm_id);
insert into agricultural_products values(1,1, ‘fruits’,’nagpur’); 
insert into agricultural_products values(2,2, ‘vegetables’,’satara’); 
insert into agricultural_products values(3,3, ‘ground vegetables’,’sangli’);
insert into agricultural_products values(4,4, ‘organic vegetables’,’sangli’);
desc agricultural_products ; 
select * from agricultural_products ;

-- Table for farmers
Create table farmers(farmer_id number(10), areaofland number(10), income 
number(20), experience number(5) address varchar(40), sellerid number(10));
alter table farmers add constraint pk_fid primary key(farmer_id);
 insert into farmers values(1,1000, 10000,3,’nagpur’,1); 
 insert into farmers values(2,1080, 15000,6,’satara’,2);
 insert into farmers values(3,700, 9000,1,’sangli’,3);
 insert  into farmers values(4,1700, 29000,20,’sangli’,4); 
 desc farmers ; select * from farmers ;


 -- Table for customers
Create table customers(cust_id number(10), cust_name varchar(10), location 
varchar(20), price number(10) quantity number(20), sellerid number(10));
alter table customers add constraint pk_ci primary key(cust_id); 
alter table customers add constraint fk_selid foreign key(sellerid) references sellers;
insert into customers values(1,’raj’, ‘mumbai’,2000,20,1); 
insert into customers values(2,’ram’, ‘pune’,4000,40,2); 
insert into customers values(3,’rohan’,’nasik’,6000,60,3); 
insert into customers values(4,’sohan’, ‘thane’,5000,50,4); 
desc customers ; 
select * from farmers ; 


 -- Table for sellers
 Create table sellers(seller_id number(10), location varchar(30), 
nooffarmers number(10), experience number(10) cust_id number(10)); 
alter table sellers add constraint pk_sid primary key(seller_id); 
alter table sellers add constraint fk_custid foreign key(cust_ id) references customers; 
insert into sellers values(1, ‘mumbai’,5,2,1); 
insert into sellers values(2, ‘pune’,23,6,2); 
insert into sellers values(3,’nasik’,15,4,3); 
insert into sellers values(4, ‘thane’,76,7,4); 
desc sellers ; select * from sellers ; 

-- Table for feedback
Create table feedback(f_For varchar2(30), typeoff varchar(20)); insert into feedback values(‘vegetables’,’very fresh’); 
insert into feedback values(‘organic vegetables’,’really organic’);
insert into feedback values(’fruits’,’fresh fruits’); 
insert into feedback values( ‘vegetables’,’got rotten potatoes’); 
desc feedback ; select * from feedback ;

-- Some other queries to relate  the database

--1) Add more records  to customer table :
insert into customers values(5, 'rohit', 'solapur',25000, 25, 5);
insert into customers values(6, 'ajit', 'kolhapur',45000, 95, 6);
insert into customers values(7, 'mangesh', 'amravati',55000, 90, 7);
insert into customers values(8, 'lina', 'amravati',50000, 50, 8);
insert into customers values(9, 'shweta', 'lonavala',70000, 67, 9);
insert into customers values(10, 'himesh', 'panvel',66000, 80, 10);

--2) To change any customer's address:
update customers set location='panvel' where cust_name = 'rohit';

--3) Display income of farmers between the range of 10000 to 15000:
select * from farmers where income between 10000 and 15000;

--4) Display name of customer whose name starts from 'R':
select cust_name from customers where cust_name like 'r%';

--5) Delete the table:
truncate table customers;
select* from customers;
--(no rows selected)






