WITH geo_las AS (
    SELECT geo_lat AS geo_las FROM city WHERE city_name = 'Самара'
),
geo_los AS (
    SELECT geo_lon AS geo_los FROM city WHERE city_name = 'Самара'
),
geo_lam AS (
    SELECT geo_lat AS geo_lam, city_name FROM city
),
geo_lou AS (
    SELECT geo_lon AS geo_lou FROM city
)
SELECT SQRT((POWER((geo_las.geo_las - geo_lam.geo_lam), 2) + POWER((geo_los.geo_los - geo_lou.geo_lou), 2))) AS distance, geo_lam.city_name
FROM geo_las, geo_los, geo_lam, geo_lou
WHERE geo_lam.city_name != 'Самара'
ORDER BY distance ASC
LIMIT 3;
