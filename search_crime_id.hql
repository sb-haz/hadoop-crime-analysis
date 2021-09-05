use uk_crime;

SELECT month, location, longitude, latitude, crime_type, last_outcome_category FROM 2021_02_west_midlands_street

WHERE crime_id = '${hivevar:id}';