SELECT I.ITEM_ID, I.DESCRIPTION, I.PRICE, I.CATEGORY
FROM ITEM I
WHERE I.ITEM_ID IN (SELECT IL.ITEM_ID 
                    FROM INVOICE_LINE IL
                    WHERE IL.ITEM_ID IN ('AD72', 'FS42', 'LD14', 'LP73', 'PF19', 'QB92', 'UF39', 'WB49'))
OR I.ITEM_ID = 'BC33'
ORDER BY I.ITEM_ID;