import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
t="create table SwAP(emp_id integer(4),emp_name varchar(20),salary integer(20))"
cur.execute(t)