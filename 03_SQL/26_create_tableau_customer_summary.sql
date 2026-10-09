
-- Tableau - Customer Summary
-- Summary of rides and average duration by customer type

DROP TABLE IF EXISTS tableau_customer_summary;

CREATE TABLE tableau_customer_summary AS
SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(duree_minutes), 2) AS avg_duration_min
FROM cyclistic_trips_clean
GROUP BY member_casual
ORDER BY member_casual;

SELECT *
FROM tableau_customer_summary;