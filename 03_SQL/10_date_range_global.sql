SELECT
    MIN(premiere_date) AS premiere_date,
    MAX(derniere_date) AS derniere_date
FROM (
    SELECT
        MIN(started_at) AS premiere_date,
        MAX(started_at) AS derniere_date
    FROM "202109_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202110_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202111_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202112_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202201_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202202_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202203_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202204_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202205_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202206_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202207_divvy_tripdata"

    UNION ALL

    SELECT
        MIN(started_at),
        MAX(started_at)
    FROM "202208_divvy_tripdata"
);