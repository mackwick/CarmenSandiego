-- ADDED STARTER CODE from world.sql

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