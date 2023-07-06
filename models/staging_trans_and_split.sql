{{
    config(materialized='table')
}}

-- Load from source

WITH SOURCES AS (
    SELECT artist_name, track_name, time_signature
    FROM default.sp1
),
SPLIT AS (
    SELECT artist_name,
        CASE 
            WHEN artist_name LIKE 'A%' THEN CONCAT('AA',artist_name)
            WHEN artist_name LIKE 'B%' THEN CONCAT('BB',artist_name)
            WHEN artist_name LIKE 'C%' THEN CONCAT('CC',artist_name)
            WHEN artist_name LIKE 'D%' THEN CONCAT('DD',artist_name)
            WHEN artist_name LIKE 'E%' THEN CONCAT('EE',artist_name)
            WHEN artist_name LIKE 'F%' THEN CONCAT('FF',artist_name)
            WHEN artist_name LIKE 'G%' THEN CONCAT('GG',artist_name)
        ELSE THEN 'OVER-FF'
        END AS artist_name_prefix
    FROM SOURCES
)
