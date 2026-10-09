
-- Analyse descriptive globale de la durée

SELECT
    COUNT(*) AS nombre_trajets,
    ROUND(AVG(duree_minutes), 2) AS duree_moyenne_minutes,
    ROUND(MIN(duree_minutes), 2) AS duree_minimale_minutes,
    ROUND(MAX(duree_minutes), 2) AS duree_maximale_minutes
FROM cyclistic_trips_clean;

-- Number of rides and average duration by customer type

SELECT
    member_casual AS customer_type,
    COUNT(*) AS number_of_rides,
    ROUND(AVG(duree_minutes), 2) AS average_ride_duration
FROM cyclistic_trips_clean
GROUP BY member_casual
ORDER BY member_casual;