import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
x = "delete from SWAP where emp_id=104"
cur.execute(x)
mydb.commit()