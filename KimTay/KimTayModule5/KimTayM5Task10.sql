SELECT DISTINCT SALES_REP.REP_ID, SALES_REP.FIRST_NAME, SALES_REP.LAST_NAME
FROM SALES_REP, CUSTOMER
WHERE SALES_REP.REP_ID = CUSTOMER.REP_ID
AND CUSTOMER.CREDIT_LIMIT = 500.00;