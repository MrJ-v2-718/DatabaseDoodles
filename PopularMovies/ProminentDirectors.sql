SELECT Director, COUNT(MovieID) AS MovieCount 
FROM Movies 
GROUP BY Director 
HAVING COUNT(MovieID) > 1 
ORDER BY MovieCount DESC;

