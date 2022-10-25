-- The number of songs (histplot)
SELECT TRIM(artist_name) as artists, 
COUNT(artist_id) FROM song_release 
JOIN artists USING(artist_id) 
GROUP BY artist_name
ORDER BY COUNT DESC

-- The number of each genre (piechart)
SELECT TRIM(genre_name) as genres, 
COUNT(genre_id) FROM song_release 
JOIN genres USING(genre_id) 
GROUP BY genre_name

-- The > 100 tempo (lineplot)
SELECT song_name, tempo
FROM songs
WHERE tempo > 100
