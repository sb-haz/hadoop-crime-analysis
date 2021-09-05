use uk_crime;

SELECT crime_id, location, month FROM 2021_02_west_midlands_street

WHERE location = CONCAT('On or near ', '${hivevar:loc}');