select *FROM MANAGER;
-- FINDING THE 1ST LARGEST SALARY FRO MANAGER
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY  DESC LIMIT 0,1;
SELECT NAME,SALARY FROM MANAGER  ORDER BY SALARY DESC LIMIT 1,1;

-- FINDING THE 2ND LARGEST SALARY FRO MANAGER
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 1,1;

-- FINDING THE 3RD LARGEST SALARY FRO MANAGER
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 2,1;

CREATE TABLE ORDER1(ORDER_ID INT,ORDER_DATE DATE,CUSTOMER_ID INT);
CREATE TABLE CUSTOMER1(CUS_ID INT, CUS_NAME VARCHAR(20), CONTACT_NAME VARCHAR(40),COUNTRY VARCHAR(30)); 

INSERT INTO ORDER1 VALUES(110,'2023-5-1',200),(111,'2023-5-8',220),(112,'2023-4-12',213),(116,'2023-5-4',224),
(106,'2023-6-24',262);

INSERT INTO CUSTOMER1 VALUES(200,"JYOTHI","KASTURI","INDIA"),(262,"PALLAVI","PRATHAP","US"),(243,"VEDHA","SAI","UK"),
(262,"PAVI","SRIDEVI","INDIA"),(216,"RAVI","KRUSHIKA","RUSSIYA");
SELECT *FROM ORDER1;
SELECT *FROM CUSTOMER1;

-- JOINS 
SELECT ORDER1.ORDER_ID,CUSTOMER1.CUS_NAME,ORDER1.ORDER_DATE ,ORDER1.CUSTOMER_ID FROM ORDER1 
INNER JOIN CUSTOMER1 ON ORDER1.CUSTOMER_ID = CUSTOMER1.CUS_ID;

CREATE TABLE STAFF(ID INT,NAME VARCHAR(20),AGE INT,PACKAGE INT);
CREATE TABLE PAYMENT(ID INT,DA_TE DATE,STAFF_ID INT, AMOUNT INT );

INSERT INTO STAFF VALUES(201,"VENU",21,800000),(204,"ANU",23,400000),(208,"RAVI",26,600000),(215,"AYAN",28,300000);
INSERT INTO PAYMENT VALUES(101,'2023-5-4',201,60000),(103,'2023-4-12',208,40000),(104,'2023-12-6',206,55000),(117,'2023-5-24',222,48000);

SELECT *FROM STAFF;
SELECT *FROM PAYMENT;
SELECT S.ID,NAME,AGE,AMOUNT FROM STAFF S, PAYMENT P WHERE S.ID = P.STAFF_ID;

SELECT *FROM ORDER1; 
ALTER TABLE ORDER1 ADD SHIPPING_ID INT;
UPDATE ORDER1 SET SHIPPING_ID = 1234 WHERE ORDER_ID = 110;
UPDATE ORDER1 SET SHIPPING_ID = 2144 WHERE ORDER_ID = 111;
UPDATE ORDER1 SET SHIPPING_ID = 3412 WHERE ORDER_ID = 112;
UPDATE ORDER1 SET SHIPPING_ID = 1678 WHERE ORDER_ID = 116;
UPDATE ORDER1 SET SHIPPING_ID = 2456 WHERE ORDER_ID = 106;

CREATE TABLE SHIPPING(SHIPPING_ID INT, NAME VARCHAR(37));
INSERT INTO SHIPPING VALUES(1678,"RAM"),(2443,"BHARATHI"),(2456,"KASTURI"),(4231,"JYO"),(3412,"RAVI");

-- JOINING OF 3 TABLES 
SELECT ORDER1.ORDER_ID,CUSTOMER1.CUS_ID ,SHIPPING.NAME FROM (( ORDER1 INNER JOIN CUSTOMER1 ON ORDER1.CUSTOMER_ID = CUSTOMER1.CUS_ID)
INNER JOIN SHIPPING ON ORDER1.SHIPPING_ID = SHIPPING.SHIPPING_ID);

-- RIGHT JOIN ON ORDER1 AND CUSTOMER1 TABLES 
SELECT CUS_NAME,COUNTRY,ORDER_DATE FROM CUSTOMER1 RIGHT JOIN ORDER1 ON CUSTOMER1.CUS_ID = ORDER1.CUSTOMER_ID;

-- LEFT JOIN ON ORDER1 AND CUSTOMER1 TABLES 
SELECT CUSTOMER1.CUS_NAME,ORDER1.ORDER_ID FROM CUSTOMER1 
LEFT JOIN ORDER1 ON CUSTOMER1.CUS_ID = ORDER1.CUSTOMER_ID;

SELECT CUSTOMER1.CUS_NAME,ORDER1.ORDER_ID FROM CUSTOMER1 
LEFT JOIN ORDER1 ON CUSTOMER1.CUS_ID = ORDER1.CUSTOMER_ID ORDER BY CUSTOMER1.CUS_NAME;

SELECT CUSTOMER1.CUS_NAME,ORDER1.ORDER_ID FROM CUSTOMER1 
LEFT JOIN ORDER1 ON CUSTOMER1.CUS_ID = ORDER1.CUSTOMER_ID WHERE CUSTOMER1.CUS_NAME LIKE "P%" ORDER BY CUSTOMER1.CUS_NAME;
 
 -- FULL JOIN
SELECT *FROM ORDER1;
SELECT *FROM CUSTOMER1;
SELECT CUS_NAME,ORDER_ID FROM CUSTOMER1 
FULL JOIN ORDER1 ON CUS_ID = CUSTOMER_ID ORDER BY CUS_NAME;

CREATE TABLE TEST1(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
C2 VARCHAR(20) NOT NULL,
C3 VARCHAR(50) DEFAULT 'SOFTWARE DEVELOPER');
