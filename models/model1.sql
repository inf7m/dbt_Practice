{{
    config(materialize="view")
}}

WITH TRANS_POPULARITY AS (
    SELECT artist_name, popularity, genre, AVG(loudness)
    FROM default.sp1
    GROUP BY artist_name, artist_name
)