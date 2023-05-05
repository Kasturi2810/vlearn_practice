import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
z="insert into SWAP(emp_id,emp_name,salary)values(%s,%s,%s)"
a = (100,"kasturi",100000)
cur.execute(z,a)
mydb.commit()
print("data inserted successfully")