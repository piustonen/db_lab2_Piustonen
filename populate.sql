INSERT INTO 
songs(song_id, song_name, loudness, speechiness, tempo, danceability) 
VALUES
('1', 'drivers license', -8.81, 0.0578, 143.875, 0.561),
('2', 'MONTERO (Call Me By Your Name)', -6.725, 0.22, 178.781, 0.593),
('3', 'STAY (with Justin Bieber)', -5.484, 0.0483, 169.928, 0.591),
('4', 'good 4 u', -5.044, 0.154, 166.928, 0.563),
('5', 'Levitating (feat. DaBaby)', -3.787, 0.0601, 102.977, 0.702),
('6', 'Peaches (feat. Daniel Caesar & Giveon)', -6.181, 0.119, 90.03, 0.677),
('7', 'Kiss Me More (feat. SZA)', -3.463, 0.0284, 110.97, 0.764),
('8', 'Blinding Lights', -5.934, 0.0598, 171.005, 0.514),
('9', 'Heat Waves', -6.9, 0.0944, 80.87, 0.761),
('10', 'Beggin', -4.808, 0.0504, 134.002, 0.714);

INSERT INTO 
genres(genre_id, genre_name) 
VALUES
('1', 'Pop'),
('2', 'Rock'),
('3', 'Hip hop'),
('4', 'Latin'),
('5', 'Dance'),
('6', 'R&B'),
('7', 'Folk'),
('8', 'Classical'),
('9', 'Jazz'),
('10', 'Blues');

INSERT INTO 
artists(artist_id, artist_name) 
VALUES
('1', 'Lil Nas X'),
('2', 'Dua Lipa'),
('3', 'Olivia Rodrigo'),
('4', 'Måneskin'),
('5', 'Glass Animals'),
('6', 'The Kid LAROI'),
('7', 'Doja Cat'),
('8', 'The Weeknd'),
('9', 'Justin Bieber');

INSERT INTO 
song_release(song_release_id, artist_id, song_id, genre_id) 
VALUES
('1', '3', '1', '1'),
('2', '1', '2', '3'),
('3', '6', '3', '2'),
('4', '3', '4', '1'),
('5', '2', '5', '5'),
('6', '9', '6', '6'),
('7', '7', '7', '6'),
('8', '8', '8', '10'),
('9', '5', '9', '4'),
('10', '4', '10', '4');
