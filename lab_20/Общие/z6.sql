select timezone,
count(*) city_count
from city
group by timezone
order by city_count desc;