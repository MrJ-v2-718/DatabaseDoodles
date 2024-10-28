SELECT CUSTOMER.CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER, INVOICES
WHERE CUSTOMER.CUST_ID = INVOICES.CUST_ID
AND INVOICES.INVOICE_DATE <> '2021-11-15';