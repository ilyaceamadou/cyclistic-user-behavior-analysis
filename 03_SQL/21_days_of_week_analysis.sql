

-- Average ride duration by customer type and day of week

SELECT
    member_casual AS customer_type,
    day_of_week,
    COUNT(*) AS number_of_rides,
    ROUND(AVG(duree_minutes), 2) AS average_ride_duration
FROM cyclistic_trips_clean
GROUP BY member_casual, day_of_week
ORDER BY customer_type, day_of_week;