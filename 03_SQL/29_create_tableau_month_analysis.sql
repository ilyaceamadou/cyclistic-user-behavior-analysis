

-- Tableau - Monthly Usage Analysis
-- Ride volume and average duration by customer type and month

DROP TABLE IF EXISTS tableau_month_analysis;

CREATE TABLE tableau_month_analysis AS
SELECT
    member_casual,
    month,
    COUNT(*) AS total_rides,
    ROUND(AVG(duree_minutes), 2) AS avg_duration_min
FROM cyclistic_trips_clean
GROUP BY
    member_casual,
    month
ORDER BY
    month,
    member_casual;

-- verification
SELECT *
FROM tableau_month_analysis;