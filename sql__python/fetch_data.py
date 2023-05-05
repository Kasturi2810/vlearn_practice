import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='DB')
cur=mydb.cursor()
f = "select *from SWAP"
cur.execute(f)
display = cur.fetchall()
for x in display:
    print(x)
    