SELECT
    COUNT(*) AS total_trajets,
    COUNT(DISTINCT ride_id) AS ride_ids_uniques
FROM (
    SELECT ride_id
    FROM "202109_divvy_tripdata"

    UNION ALL

    SELECT ride_id
    FROM "202110_divvy_tripdata"
);