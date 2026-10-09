
-- Number of rides by customer type and hour

SELECT
    member_casual AS customer_type,
    hour,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, hour
ORDER BY customer_type, hour;