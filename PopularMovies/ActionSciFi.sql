SELECT m.Title 
FROM Movies m
JOIN MovieGenres mg1 ON m.MovieID = mg1.MovieID
JOIN Genres g1 ON mg1.GenreID = g1.GenreID
JOIN MovieGenres mg2 ON m.MovieID = mg2.MovieID
JOIN Genres g2 ON mg2.GenreID = g2.GenreID
WHERE g1.GenreName = 'Action' AND g2.GenreName = 'Sci-Fi';

