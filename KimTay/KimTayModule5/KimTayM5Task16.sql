SELECT I.INVOICE_NUM, I.INVOICE_DATE
FROM INVOICES I, INVOICE_LINE IL
WHERE I.INVOICE_NUM = IL.INVOICE_NUM
AND CUST_ID = '435'
AND ITEM_ID = 'KH81';