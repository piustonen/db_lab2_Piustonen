import psycopg2

username = 'Piustonen'
password = '2010'
database = 'Piustonen01_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(genre_name) as genres, 
COUNT(genre_id) FROM song_release 
JOIN genres USING(genre_id) 
GROUP BY genre_name
'''

query_2 = '''
SELECT TRIM(artist_name) as artists, 
COUNT(artist_id) FROM song_release 
JOIN artists USING(artist_id) 
GROUP BY artist_name
ORDER BY COUNT DESC
'''

query_3 = '''
SELECT song_name, tempo
FROM songs
WHERE tempo > 100
ORDER BY tempo ASC
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

