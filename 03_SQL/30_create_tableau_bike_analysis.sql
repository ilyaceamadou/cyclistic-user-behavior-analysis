-- Tableau - Bike Type Analysis
-- Ride volume and average duration by customer type and bike type

DROP TABLE IF EXISTS tableau_bike_analysis;

CREATE TABLE tableau_bike_analysis AS
SELECT
    member_casual,
    rideable_type,
    COUNT(*) AS total_rides,
    ROUND(AVG(duree_minutes), 2) AS avg_duration_min
FROM cyclistic_trips_clean
GROUP BY
    member_casual,
    rideable_type
ORDER BY
    member_casual,
    rideable_type;
-- verification
SELECT *
FROM tableau_bike_analysis;