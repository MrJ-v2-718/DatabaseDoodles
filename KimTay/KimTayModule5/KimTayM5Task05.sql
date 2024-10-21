SELECT CUST_ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE EXISTS (SELECT *
              FROM INVOICE_LINE, INVOICES
              WHERE INVOICES.CUST_ID = CUSTOMER.CUST_ID
	      AND INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM
	      AND INVOICE_DATE = '2021-11-15');