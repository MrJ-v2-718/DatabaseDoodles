SELECT g.GenreName, AVG(m.Duration) AS AvgDuration 
FROM Genres g
JOIN MovieGenres mg ON g.GenreID = mg.GenreID
JOIN Movies m ON mg.MovieID = m.MovieID
GROUP BY g.GenreName 
ORDER BY AvgDuration DESC;

