
-- 1.  Création de la colonne hour

ALTER TABLE cyclistic_trips_clean
ADD COLUMN hour INTEGER;

-- 2.  Remplissage de la colonne hour
UPDATE cyclistic_trips_clean
SET hour = CAST(strftime('%H', started_at) AS INTEGER)
WHERE hour IS NULL;

--3. Contrôle des heures
SELECT
    hour,
    COUNT(*) AS nombre_trajets
FROM cyclistic_trips_clean
GROUP BY hour
ORDER BY hour;