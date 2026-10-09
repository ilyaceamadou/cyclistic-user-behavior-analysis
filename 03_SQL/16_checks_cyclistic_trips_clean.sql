-- Check 1: Number of valid trips

SELECT COUNT(*) AS nombre_lignes
FROM cyclistic_trips_clean;


-- Check 2: Duration range and average
SELECT
    MIN(duree_minutes) AS duree_min,
    MAX(duree_minutes) AS duree_max,
    AVG(duree_minutes) AS duree_moyenne
FROM cyclistic_trips_clean;