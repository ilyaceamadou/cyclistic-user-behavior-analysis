
-- Verification 4.4.1 - Average ride duration

SELECT
    member_casual AS customer_type,
    COUNT(*) AS number_of_rides,
    ROUND(AVG(duree_minutes), 2) AS average_ride_duration
FROM cyclistic_trips_clean
GROUP BY member_casual
ORDER BY member_casual;

-- Verification 4.4.2 - Day of week

SELECT
    member_casual AS customer_type,
    day_of_week,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, day_of_week
ORDER BY customer_type, number_of_rides DESC;

	-- Verification 4.4.3 - Hourly usage
	
	SELECT
	    member_casual AS customer_type,
	    hour,
	    COUNT(*) AS number_of_rides
	FROM cyclistic_trips_clean
	GROUP BY member_casual, hour
	ORDER BY customer_type, number_of_rides DESC;
	
	-- Verification 4.4.4 - Monthly usage

SELECT
    member_casual AS customer_type,
    month,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, month
ORDER BY customer_type, number_of_rides DESC;


-- Verification 4.4.5 - Bike type usage

SELECT
    member_casual AS customer_type,
    rideable_type AS bike_type,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, rideable_type
ORDER BY customer_type, number_of_rides DESC;
















