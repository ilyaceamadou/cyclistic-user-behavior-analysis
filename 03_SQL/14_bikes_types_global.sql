SELECT
    rideable_type,
    COUNT(*) AS nombre_de_trajets
FROM "cyclistic_trips"
GROUP BY rideable_type
ORDER BY nombre_de_trajets DESC;