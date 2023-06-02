SELECT Name, min_life_expectancy
FROM dog_breeds.csv
WHERE min_life_expectancy = '10'
ORDER BY Name;