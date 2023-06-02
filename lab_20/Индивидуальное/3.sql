SELECT Name, max_height_male, max_height_female, max_weight_male, max_weight_female
FROM dog_breeds.csv
ORDER BY Name
LIMIT 20;