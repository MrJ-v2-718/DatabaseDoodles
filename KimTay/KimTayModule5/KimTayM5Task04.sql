SELECT CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE CUST_ID IN (SELECT CUST_ID FROM INVOICES 
                  WHERE INVOICE_DATE = '2021-11-15');