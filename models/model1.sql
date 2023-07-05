WITH TRANS_POPULARITY AS (
    SELECT artist_name, popularity, genre, AVG(loudness) AS avg_loudness
    FROM default.sp1
    GROUP BY artist_name, popularity, genre, loudness
)
SELECT * FROM TRANS_POPULARITY LIMIT 5
