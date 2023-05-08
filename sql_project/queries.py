import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Kasturi@2810',database='Inventory_Management')
cur=mydb.cursor()

# 7. Delete the defective item, e.g., the shirt which was accidentally purchased by the “ORay” store, manufactured on the date ‘01-04-23’.
e = 'DELETE P FROM PURCHASE P JOIN MANUFACTURE M ON M.PRODUCT_ID = P.PRODUCT_ID WHERE PURCHASE_STORE="ORay" AND DEFECTIVE=1 AND M.MANUFACTURED_DATE="2023-04-29"'


#8.Update the manufacture details of all the red-colored toys which are purchased by the “MyKids” store.
e = 'UPDATE MANUFACTURE M JOIN PURCHASE P ON P.PRODUCT_ID = M.PRODUCT_ID SET NEED_TO_BE_MANUFACTURED = NEED_TO_BE_MANUFACTURED+PURCHASE_QUANTITY WHERE M.PRODUCT_NAME = "red-colored-toys" AND P.PURCHASE_STORE="MyKids"'

#9.Display all the “wooden chair” items that were manufactured before the 1st May 2023. 
e='SELECT * FROM MANUFACTURE WHERE PRODUCT_NAME="Wooden Chair" AND MANUFACTURED_DATE <="2023-05-01"'


#10.Display the profit margin amount of the “wooden table” that was sold by the “MyCare” store, manufactured by the “SS Export” company.
e='SELECT SUM(PROFIT_MARGIN) FROM SALES S JOIN PURCHASE P ON P.PRODUCT_ID = S.PRODUCT_ID JOIN MANUFACTURE M ON M.PRODUCT_ID = S.PRODUCT_ID  WHERE S.PRODUCT_NAME="Wooden Table" AND P.PURCHASE_STORE = "MyCare" AND M.MANUFACTURED_COMPANY = "SS Exports"'


cur.execute(e)
mydb.commit()

