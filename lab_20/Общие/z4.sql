SELECT FORMAT('%-20s | %-10s', timezone, count(*)) AS result
FROM city
WHERE city.district_id IN (SELECT district_id FROM districts WHERE federal_district = 'Сибирский' OR federal_district = 'Приволжский')
GROUP BY timezone
ORDER BY 1 ASC;
