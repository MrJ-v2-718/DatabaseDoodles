-- Show tables in current database
SELECT name 
FROM sqlite_master 
WHERE type='table';

-- US Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 1
ORDER BY 
    C.name, PD.year;

-- China Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 2
ORDER BY 
    C.name, PD.year;

-- Japan Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 3
ORDER BY 
    C.name, PD.year;

-- India Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 4
ORDER BY 
    C.name, PD.year;

-- Germany Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 5
ORDER BY 
    C.name, PD.year;

-- Brazil Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 6
ORDER BY 
    C.name, PD.year;

-- United Kingdom Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 7
ORDER BY 
    C.name, PD.year;

-- Russia Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 8
ORDER BY 
    C.name, PD.year;

-- South Korea Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 9
ORDER BY 
    C.name, PD.year;

-- North Korea Population
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    C.country_id = 10
ORDER BY 
    C.name, PD.year;

-- Current Global Populations
SELECT 
    C.name, 
    PD.year, 
    printf('%,d', PD.population) AS population
FROM 
    Countries C
JOIN 
    PopulationData PD ON C.country_id = PD.country_id
WHERE
    PD.year = 2020
ORDER BY 
    PD.population DESC, C.name;

-- Population Change 2010-2020
SELECT 
    C.name, 
    printf('%,d', PD2020.population) AS population_2020,
    printf('%,d', PD2010.population) AS population_2010,
    printf('%,d', PD2020.population - PD2010.population) AS population_change,
    ROUND((PD2020.population - PD2010.population) * 100.0 / PD2010.population, 2) || '%' AS percentage_change
FROM 
    Countries C
JOIN 
    PopulationData PD2020 ON C.country_id = PD2020.country_id AND PD2020.year = 2020
JOIN 
    PopulationData PD2010 ON C.country_id = PD2010.country_id AND PD2010.year = 2010
ORDER BY 
    PD2020.population - PD2010.population DESC, C.name;

-- Population Change 2000-2010
SELECT 
    C.name, 
    printf('%,d', PD2010.population) AS population_2010,
    printf('%,d', PD2000.population) AS population_2000,
    printf('%,d', PD2010.population - PD2000.population) AS population_change,
    ROUND((PD2010.population - PD2000.population) * 100.0 / PD2000.population, 2) || '%' AS percentage_change
FROM 
    Countries C
JOIN 
    PopulationData PD2010 ON C.country_id = PD2010.country_id AND PD2010.year = 2010
JOIN 
    PopulationData PD2000 ON C.country_id = PD2000.country_id AND PD2000.year = 2000
ORDER BY 
    PD2010.population - PD2000.population DESC, C.name;

-- Population Change 1990-2000
SELECT 
    C.name, 
    printf('%,d', PD2000.population) AS population_2000,
    printf('%,d', PD1990.population) AS population_1990,
    printf('%,d', PD2000.population - PD1990.population) AS population_change,
    ROUND((PD2000.population - PD1990.population) * 100.0 / PD1990.population, 2) || '%' AS percentage_change
FROM 
    Countries C
JOIN 
    PopulationData PD2000 ON C.country_id = PD2000.country_id AND PD2000.year = 2000
JOIN 
    PopulationData PD1990 ON C.country_id = PD1990.country_id AND PD1990.year = 1990
ORDER BY 
    PD2000.population - PD1990.population DESC, C.name;
