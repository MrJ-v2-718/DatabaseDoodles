SELECT OFFICE_NUM, COUNT(*)
FROM PROPERTY
WHERE BDRMS = 3
GROUP BY OFFICE_NUM;