SELECT g.GenreName 
FROM Movies m
JOIN MovieGenres mg ON m.MovieID = mg.MovieID
JOIN Genres g ON mg.GenreID = g.GenreID
WHERE m.Title = 'Inception';

