
-- Tableau - Hourly Usage Analysis
-- Ride volume and average duration by customer type and hour

DROP TABLE IF EXISTS tableau_hour_analysis;

CREATE TABLE tableau_hour_analysis AS
SELECT
    member_casual,
    hour,
    COUNT(*) AS total_rides,
    ROUND(AVG(duree_minutes), 2) AS avg_duration_min
FROM cyclistic_trips_clean
GROUP BY
    member_casual,
    hour
ORDER BY
    member_casual,
    hour;

-- verification 
SELECT *
FROM tableau_hour_analysis;