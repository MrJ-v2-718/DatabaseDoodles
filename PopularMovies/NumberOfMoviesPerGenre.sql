SELECT g.GenreName, COUNT(mg.MovieID) AS MovieCount 
FROM Genres g
JOIN MovieGenres mg ON g.GenreID = mg.GenreID
GROUP BY g.GenreName 
ORDER BY MovieCount DESC;

