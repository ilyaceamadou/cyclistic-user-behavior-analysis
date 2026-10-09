
-- 1. creation colomme month
ALTER TABLE cyclistic_trips_clean
ADD COLUMN month TEXT;

-- 2. remplisssage columm month

UPDATE cyclistic_trips_clean
SET month = strftime('%Y-%m', started_at)
WHERE month IS NULL;

-- 3. controle

SELECT
    month,
    COUNT(*) AS nombre_trajets
FROM cyclistic_trips_clean
GROUP BY month
ORDER BY month;