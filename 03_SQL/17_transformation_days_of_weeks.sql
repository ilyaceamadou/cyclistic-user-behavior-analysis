-- 1. Create the day_of_week column

ALTER TABLE cyclistic_trips_clean
ADD COLUMN day_of_week INTEGER;

-- 2. Populate day_of_week

UPDATE cyclistic_trips_clean
SET day_of_week = CAST(strftime('%w', started_at) AS INTEGER) + 1
WHERE day_of_week IS NULL;

-- 3. Validate the transformation

SELECT
    day_of_week,
    COUNT(*) AS nombre_trajets
FROM cyclistic_trips_clean
GROUP BY day_of_week
ORDER BY day_of_week;