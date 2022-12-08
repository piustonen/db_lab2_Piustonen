import psycopg2

username = 'postgres'
password = '2010'
database = 'Piustonen01_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(genre_name) AS genre, 
COUNT(genre_id) 
FROM cloud_releases 
JOIN cloud_genres USING(genre_id) 
GROUP BY genre_name
'''

query_2 = '''
SELECT TRIM(artist_name) as artist, 
COUNT(song_id) 
FROM cloud_artists 
JOIN cloud_performances USING(artist_id) 
GROUP BY artist_name
'''

query_3 = '''
SELECT TRIM(genre_name) AS genre, 
COUNT(*) FROM cloud_performances 
JOIN cloud_songs USING(song_id) 
JOIN cloud_releases USING(song_id) 
JOIN cloud_genres USING(genre_id) 
WHERE perf_place != 'USA' 
GROUP BY genre_name
'''

conn = psycopg2.connect(user = username, password = password, dbname = database, host = host, port = port)

with conn:
    print("Database opened successfully")
    cur = conn.cursor()

    print('1.\n')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('2.\n')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('3.\n')
    cur.execute(query_3)
    for row in cur:
        print(row)
