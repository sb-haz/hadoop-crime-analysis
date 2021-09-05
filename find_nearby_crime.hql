USE uk_crime;

SELECT location, COUNT(location) AS cnt FROM 2021_02_west_midlands_street

WHERE ( 6371 * acos( cos( radians( ${hivevar:lat} ) ) * cos( radians( latitude ) ) * cos( radians(longitude) - radians( ${hivevar:lng} ) ) + sin( radians( ${hivevar:lat} ) ) * sin( radians(latitude)))) < ${hivevar:distance}

GROUP BY location

SORT BY cnt DESC LIMIT 20;