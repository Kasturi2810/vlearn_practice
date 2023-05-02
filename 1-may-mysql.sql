show databases;
select *from rgm;
update rgm set address = "ATP" where address = "Ananthapur";
update rgm set cname = "RGMCET" , rsession = "py" where contact_no = 868807;

select *from student;
create table people(id1 int ,name varchar(20),markss  int);
insert into people select *from student;
select *from people;

truncate table people;
drop table people;
select *from student;

delete from student where sname = "kavi";
-- alter table student RENAME COLUMN id To id_number;
ALTER TABLE STUDENT ADD ADDRESS VARCHAR(30);
ALTER TABLE STUDENT MODIFY COLUMN ADDRESS VARCHAR(50);



CREATE DATABASE EXERCISE;
CREATE TABLE CUSTOMER(ID INT PRIMARY KEY,NAME VARCHAR(20),CITY VARCHAR(30),GRADE INT ,SALESMAN_ID INT);

INSERT INTO CUSTOMER VALUES(101,"JYOTHI","HYD",90,201),
							(102,"PALLAVI","DELHI",67,202),
                            (103,"VINNU","MUMBAI",85,203),
                            (104,"KASTURI","BENGULURU",74,204),
                            (105,"RAVI","CHENNAI",144,205),
                            (106,"AMAR","MYSOOR",79,206),
                            (107,"VEDHA","KAKINADA",108,207),
                            (108,"VARUN","HYD",904,208),
                            (109,"LUCKY","KOLKATHA",80,209),
                            (110,"SAI","RAJASTHAN",165,210);
SELECT *FROM CUSTOMER;
SELECT *FROM CUSTOMER WHERE GRADE > 100;
SELECT *FROM CUSTOMER WHERE GRADE >= 100 ORDER BY  GRADE ASC;

-- WRITE AN SQL QUERY DETAILS OF CUSTOMER WHO ARE LIVUNG HYD CITY AND GRADE <= 100
SELECT *FROM CUSTOMER WHERE CITY = "HYD" AND GRADE <=100;
-- WRITE AN SQL QUERY DETAILS OF CUSTOMER WHO ARE FROM HYD OR ABOVE GRADE 100
SELECT NAME FROM CUSTOMER WHERE CITY = "HYD" OR GRADE > 100;
-- WRITE AN SQL QUERY DETAILS OF CUSTOMER WHO ARE EITHER FROM KERALA CITY OR WHO DO NOT ABOVE GRADA MORE THAN 100
SELECT *FROM CUSTOMER WHERE CITY = "KOLKATHA" OR GRADE <= 100;
-- WRITE AN SQL QUERY DETAILS OF CUSTOMER WHO NOT BELONG TO THE CITY MUMBAI AND GRADE ABOVE THE 200 
SELECT *FROM CUSTOMER WHERE NOT CITY = "KOLKATHA" OR GRADE > 200;
