-- Create the Movies table
CREATE TABLE Movies (
    MovieID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    ReleaseYear INTEGER,
    Duration INTEGER, -- in minutes
    Director TEXT
);

