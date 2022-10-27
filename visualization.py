import psycopg2
import matplotlib.pyplot as plt
import seaborn as sns

username = 'postgres'
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

    periods = []
    p_count = []
    plt.xticks(rotation=10)
    for row in cur:
        periods.append(row[0])
        p_count.append(row[1])
    sns.barplot(x = periods , y = p_count)
    plt.show()


    print('2.\n')
    cur.execute(query_2)
    periods = []
    p_count = []
    for row in cur:
        periods.append(row[0])
        p_count.append(row[1])
    fig1, ax1 = plt.subplots()
    ax1.pie(p_count,  labels=periods, autopct='%1.1f%%',
            shadow=True, startangle=90)
    ax1.axis('equal')
    plt.show()


    print('3.\n')
    cur.execute(query_3)

    periods = []
    p_count = []
    plt.xticks(rotation=10)
    for row in cur:
        periods.append(row[0])
        p_count.append(row[1])
    sns.lineplot(x = periods, y = p_count)
    plt.show()

