SELECT S.REP_ID, S.FIRST_NAME AS REP_FIRST, S.LAST_NAME AS REP_LAST, C.CUST_ID, 
C.FIRST_NAME AS CUSTOMER_FIRST, C.LAST_NAME AS CUSTOMER_LAST
FROM CUSTOMER C
RIGHT JOIN SALES_REP S ON C.REP_ID = S.REP_ID
ORDER BY S.REP_ID, C.CUST_ID;