

-- Number of rides by customer type and month

SELECT
    member_casual AS customer_type,
    month,
    COUNT(*) AS number_of_rides
FROM cyclistic_trips_clean
GROUP BY member_casual, month
ORDER BY customer_type, month;