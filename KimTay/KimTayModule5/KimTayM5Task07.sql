SELECT INVOICES.INVOICE_NUM, INVOICES.INVOICE_DATE, ITEM.ITEM_ID, ITEM.DESCRIPTION, ITEM.CATEGORY
FROM INVOICES, INVOICE_LINE, ITEM
WHERE INVOICES.INVOICE_NUM = INVOICE_LINE.INVOICE_NUM
AND INVOICE_LINE.ITEM_ID = ITEM.ITEM_ID;