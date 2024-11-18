CREATE TABLE Sources (
    source_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    url TEXT
);

-- Insert source data (example)
INSERT INTO Sources (source_id, name, url)
VALUES (1, 'United States Census Bureau', 'https://www.census.gov/');
