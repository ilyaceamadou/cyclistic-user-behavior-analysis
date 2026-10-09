CREATE TABLE cyclistic_trips_clean AS
SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    ROUND(
        (julianday(ended_at) - julianday(started_at)) * 1440,
        2
    ) AS duree_minutes
FROM cyclistic_trips
WHERE started_at < ended_at
  AND (julianday(ended_at) - julianday(started_at)) * 1440 <= 1440;

