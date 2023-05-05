import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
z="insert into SWAP(emp_id,emp_name,salary)values(%s,%s,%s)"
a = [(101,"jyothi",2500000),(103,"ravi",140000),(104,"pavi",400000)]
cur.executemany(z,a)
mydb.commit()
print("multiple data inserted successfully")