import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
x = "update SWAP set salary = salary + 25000 where emp_id = 100"
cur.execute(x)
mydb.commit()