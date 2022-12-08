SELECT TRIM(genre_name) AS genre, 
COUNT(genre_id) 
FROM cloud_releases 
JOIN cloud_genres USING(genre_id) 
GROUP BY genre_name

SELECT TRIM(artist_name) as artist, 
COUNT(song_id) 
FROM cloud_artists 
JOIN cloud_performances USING(artist_id) 
GROUP BY artist_name	

SELECT TRIM(genre_name) AS genre, 
COUNT(*) FROM cloud_performances 
JOIN cloud_songs USING(song_id) 
JOIN cloud_releases USING(song_id) 
JOIN cloud_genres USING(genre_id) 
WHERE perf_place != 'USA' 
GROUP BY genre_name
