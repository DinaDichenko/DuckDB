SELECT Name, trainability, energy
FROM dog_breeds.csv
WHERE Name GLOB 'A*';