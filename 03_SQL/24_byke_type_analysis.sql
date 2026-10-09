

-- Number of rides by customer type and bike type

SELECT
    member_casual AS customer_type,
    rideable_type AS bike_type,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, rideable_type
ORDER BY customer_type, bike_type;

-- Check member docked bike usage

SELECT
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
WHERE member_casual = 'member'
  AND rideable_type = 'docked_bike';


-- Check missing bike type values for casual riders

SELECT
    rideable_type,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
WHERE member_casual = 'casual'
GROUP BY rideable_type;