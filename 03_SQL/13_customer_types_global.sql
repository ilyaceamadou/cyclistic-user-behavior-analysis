SELECT
    member_casual,
    COUNT(*) AS nombre_de_trajets
FROM "cyclistic_trips"
GROUP BY member_casual
ORDER BY nombre_de_trajets DESC;