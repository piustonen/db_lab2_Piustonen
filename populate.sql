INSERT INTO cloud_artists(artist_id, artist_name) 
VALUES('AriGrand', 'Ariana Grande'),
('EdSheer', 'Ed Sheeran'),
('LilT', 'Lil Tecca'),
('SSmith', 'Sam Smith'),
('LilNX', 'Lil Nas X'),
('BBunny', 'Bad Bunny'),
('DJSnake', 'DJ Snake'),
('LCap', 'Lewis Capaldi'),
('Drake', 'Drake');

INSERT INTO cloud_genres(genre_id, genre_name) 
VALUES('001', 'pop'),
('002', 'country rap'),
('003', 'reggaeton'),
('004', 'latin'),
('005', 'boy band'),
('006', 'canadian hip hop'),
('007', 'trap music'),
('008', 'dance pop'),
('009', 'escape room'),
('010', 'brostep');

INSERT INTO cloud_songs(song_id, song_name) 
VALUES('1', 'boyfriend (with Social House)'),
('2', 'Beautiful People (feat. Khalid)'),
('3', 'I Dont Care (with Justin Bieber)'),
('4', 'Ransom'),
('5', 'How Do You Sleep?'),
('6', 'Old Town Road - Remix'),
('7', 'Callaita'),
('8', 'Loco Contigo (feat. J. Balvin & Tyga)'),
('9', 'Someone You Loved'),
('10', 'Money In The Grave (Drake ft. Rick Ross)');

INSERT INTO cloud_releases(release_id, genre_id, song_id, release_date, release_time, release_place) 
VALUES('108b', '008', '1', to_date('2019-08-02', 'yyyy-mm-dd'), NULL, 'USA'),
('201b', '001', '2', to_date('2019-06-28', 'yyyy-mm-dd'), '19:00:00', 'UK'),
('301i', '001', '3', to_date('2019-10-18', 'yyyy-mm-dd'), '21:00:00', 'UK'),
('407r', '007', '4', to_date('2019-05-22', 'yyyy-mm-dd'), NULL, 'France'),
('501h', '001', '5', to_date('2019-10-17', 'yyyy-mm-dd'), '11:45:00', 'USA'),
('602o', '002', '6', to_date('2018-12-03', 'yyyy-mm-dd'), '20:00:00', NULL),
('703c', '003', '7', to_date('2019-05-31', 'yyyy-mm-dd'), '11:00:00', 'UK'),
('808l', '008', '8', to_date('2019-06-14', 'yyyy-mm-dd'), NULL, 'UK'),
('901s', '001', '9', to_date('2018-11-08', 'yyyy-mm-dd'), '16:30:00', NULL),
('106m', '006', '10', to_date('2019-06-15', 'yyyy-mm-dd'), '22:00:00', 'USA');

INSERT INTO cloud_performances(perf_id, artist_id, song_id, perf_date, perf_time, perf_place) 
VALUES('108051019', 'AriGrand', '1', to_date('2019-10-05', 'yyyy-mm-dd'), '10:00:00', 'USA'),
('201051119', 'EdSheer', '2', to_date('2019-11-05', 'yyyy-mm-dd'), '19:00:00', 'UK'),
('301151119', 'EdSheer', '3', to_date('2019-11-15', 'yyyy-mm-dd'), '21:00:00', 'UK'),
('407161119', 'LilT', '4', to_date('2019-11-16', 'yyyy-mm-dd'), '21:00:00', 'France'),
('501181119', 'SSmith', '5', to_date('2019-11-18', 'yyyy-mm-dd'), '20:00:00', 'USA'),
('602221119', 'LilNX', '6', to_date('2019-11-22', 'yyyy-mm-dd'), '20:00:00', 'USA'),
('703021219', 'BBunny', '7', to_date('2019-12-02', 'yyyy-mm-dd'), '11:00:00', 'Italy'),
('808051219', 'DJSnake', '8', to_date('2019-12-05', 'yyyy-mm-dd'), '15:30:00', 'UK'),
('901111219', 'LCap', '9', to_date('2019-12-11', 'yyyy-mm-dd'), '16:30:00', 'Germany'),
('101251219', 'Drake', '10', to_date('2019-12-25', 'yyyy-mm-dd'), '22:00:00', 'USA');
