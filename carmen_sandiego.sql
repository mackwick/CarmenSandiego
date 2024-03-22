-- ADDED STARTER CODE from world.sql

CREATE TABLE city (
    id integer NOT NULL,
    name text NOT NULL,
    countrycode character(3) NOT NULL,
    district text NOT NULL,
    population integer NOT NULL
);

CREATE TABLE country (
    code character(3) NOT NULL,
    name text NOT NULL,
    continent text NOT NULL,
    region text NOT NULL,
    surfacearea real NOT NULL,
    indepyear smallint,
    population integer NOT NULL,
    lifeexpectancy real,
    gnp numeric(10,2),
    gnpold numeric(10,2),
    localname text NOT NULL,
    governmentform text NOT NULL,
    headofstate text,
    capital integer,
    code2 character(2) NOT NULL,
    CONSTRAINT country_continent_check CHECK ((((((((continent = 'Asia'::text) OR (continent = 'Europe'::text)) OR (continent = 'North America'::text)) OR (continent = 'Africa'::text)) OR (continent = 'Oceania'::text)) OR (continent = 'Antarctica'::text)) OR (continent = 'South America'::text)))
);

CREATE TABLE countrylanguage (
    countrycode character(3) NOT NULL,
    "language" text NOT NULL,
    isofficial boolean NOT NULL,
    percentage real NOT NULL
);

-------------------------------------------------------------
--Find the least populated country in Southern Europe
-------------------------------------------------------------
-- Get sum of the city populations with shared country code where the country code matches and the region is 'Southern Europe'

-- SELECT city.name, city.population, city.countrycode FROM city INNER JOIN country ON city.countrycode = country.code WHERE region = 'Southern Europe'
-- It's The Vatican (countrycode VAT)

-------------------------------------------------------------
-- Find the country's official language
-------------------------------------------------------------
-- SELECT language, isofficial FROM countrylanguage WHERE countrycode = 'VAT'
-- It's Italian

-------------------------------------------------------------
-- Nearby that country only speaks that language
-------------------------------------------------------------
-- SELECT * FROM countrylanguage WHERE language = 'Italian' AND percentage = 100
--SMR only speaks Italian
-- SELECT * FROM country WHERE code = 'SMR'
-- It's San Marino

-------------------------------------------------------------
-- City in San Marino that is not the same name as the country
-------------------------------------------------------------
-- SELECT * FROM city WHERE countrycode = 'SMR' AND name != 'San Marino'
-- It's Serravalle

-------------------------------------------------------------
-- Capital of San Marino
-------------------------------------------------------------

-- SELECT * FROM country WHERE name = 'San Marino'
-- capital is 3171
-- SELECT * FROM city WHERE id = 3171
-- It's San Marino, which isn't surprising

-------------------------------------------------------------
-- Name of city in a country in South America that is similar to but ends differently from San Marino
-------------------------------------------------------------
-- SELECT * FROM city INNER JOIN country ON city.countrycode = country.code WHERE country.continent = 'South America' AND city.name LIKE 'San M%'
-- San Miguel?
-- SELECT * FROM country WHERE code = 'ARG'
-- It's Argentina

-------------------------------------------------------------
-- So I'm off to add one to the population I find
-- In a city of ninety-one thousand and now, eighty five.
-------------------------------------------------------------
-- SELECT * FROM city WHERE population = 91084
-- It's Santa Monica! Yayyyyyy.