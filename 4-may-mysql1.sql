-- Question1
create database Employee;
create table EmployeeDetails(Emp_id int , Emp_name varchar(20),Job_name varchar(30),Manager_id int,Hire_date date,Salary
 int,Dep_id int);

insert into EmployeeDetails values(68319 ,"Mr. Singh" ,"PRESIDENT" ,68319 ,'1991-11-18' ,6000 ,1001),
								  (68320 ,"Mr. ram" ,"cm",68374,'1991-09-24' ,7000 ,1002),
                                  (68322 ,"Mr.kalyan" ,"president",54321,'1991-10-4' ,8100 ,1003),
                                  (68321 ,"jytothi" ,"prime minister",54871,'1991-6-4' ,8500 ,1004),
                                  (68323 ,"kasturi" ,"head",57634,'1991-07-3' ,10000 ,1005),
                                  (68324 ,"ravi" ,"lecturer",64123,'1991-01-8' ,150000 ,1006),
                                  (68325 ,"pallavi" ,"police",59871,'1991-1-16' ,8100 ,1007),
                                  (68326 ,"sai" ,"developer",43987,'1991-05-7' ,20000,1008),
                                  (68327 ,"vedha" ,"doctor",86432,'1991-11-9' ,12000 ,1009),
                                  (68328 ,"lucky" ,"soldier",54321,'1991-08-15' ,18000 ,1010);
                                  
select *from  EmployeeDetails;
select Salary from EmployeeDetails;
select distinct job_name as designations from EmployeeDetails;
update  EmployeeDetails set Salary = 15000 where Emp_name = "Mr. ram";

-- Question 2
create database Football;
drop database Fooyball;
create table Football_Venue(venue_id int,venue_name varchar(20),city_id int,capacity int);
insert into  Football_Venue values(20001,"france",10001,67534),
								   (20002,"german",10002,69634),
                                   (20003,"chinna",10006,42316),
                                   (20004,"india",10004,84213),
                                   (20005,"russia",10005,93672);
insert into  Football_Venue values(20006,"Australia",10007,42115),
								   (20007,"spain",10008,24798),
                                   (20008,"Australia:",10009,54763);
  select *from  Football_Venue;                           
select count(*) from  Football_Venue;    
select venue_name as Location,capacity as Volume from Football_Venue; 
delete from Football_Venue where venue_name="Australia";


-- VIEWS -- MEANS CREATING A VIRTUAL TABLE OR DUPLICATE TABLE 
------------------
show databases;
select *from customer;
CREATE VIEW HELLO AS SELECT *FROM CUSTOMER;
SELECT *FROM HELLO;

UPDATE CUSTOMER SET GRADE = 95 WHERE NAME="JYOTHI";
UPDATE HELLO SET GRADE = 90 WHERE NAME = "VINNU";

CREATE VIEW HII AS SELECT NAME,CITY,SALESMAN_ID FROM CUSTOMER WHERE CITY = "DELHI";
SELECT *FROM HII;

CREATE INDEX CHINNU ON CUSTOMER(CITY);
SELECT *FROM CHINNU;
SHOW INDEX IN CUSTOMER;
 




