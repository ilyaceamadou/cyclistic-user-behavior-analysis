
-- Tableau - Day of Week Analysis
-- Ride volume and average duration by customer type and day of week

DROP TABLE IF EXISTS tableau_day_analysis;

CREATE TABLE tableau_day_analysis AS
SELECT
    member_casual,
    day_of_week,
    CASE day_of_week
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
    END AS day_name,
    COUNT(*) AS total_rides,
    ROUND(AVG(duree_minutes), 2) AS avg_duration_min
FROM cyclistic_trips_clean
GROUP BY
    member_casual,
    day_of_week
ORDER BY
    member_casual,
    day_of_week;

-- verification 
SELECT *
FROM tableau_day_analysis;