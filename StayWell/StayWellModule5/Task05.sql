SELECT O.FIRST_NAME, O.LAST_NAME
FROM OWNER O, PROPERTY P
WHERE O.OWNER_NUM = P.OWNER_NUM
AND BDRMS = 2;