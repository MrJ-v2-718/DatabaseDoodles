-- Create the MovieGenres table
CREATE TABLE MovieGenres (
    MovieGenreID INTEGER PRIMARY KEY,
    MovieID INTEGER,
    GenreID INTEGER,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

