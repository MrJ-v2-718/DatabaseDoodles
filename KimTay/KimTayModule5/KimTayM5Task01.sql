SELECT INVOICE_NUM, INVOICE_DATE, CUSTOMER.CUST_ID, FIRST_NAME, LAST_NAME
FROM INVOICES, CUSTOMER
WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID;