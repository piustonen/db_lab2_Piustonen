CREATE TABLE songs(
	song_id int NOT NULL,
	song_name char(50) NOT NULL,
	loudness int NOT NULL,
	speechiness int NOT NULL,
	tempo int NOT NULL,
	danceability int NOT NULL);

CREATE TABLE genres(
	genre_id int NOT NULL ,
	genre_name char(50)  NOT NULL);

CREATE TABLE artists(
	artist_id int NOT NULL,
	artist_name char(50) NOT NULL);

CREATE TABLE song_release(
	song_release_id int NOT NULL,
	artist_id int NOT NULL,
	song_id int NOT NULL,
	genre_id int NOT NULL);

ALTER TABLE songs ADD CONSTRAINT PK_songs PRIMARY KEY (song_id);
ALTER TABLE genres ADD CONSTRAINT PK_genres PRIMARY KEY (genre_id);
ALTER TABLE artists ADD CONSTRAINT PK_artists PRIMARY KEY (artist_id);
ALTER TABLE song_release ADD CONSTRAINT PK_song_release PRIMARY KEY (song_release_id);

ALTER TABLE song_release
ADD CONSTRAINT FK_song_release_artists FOREIGN KEY (artist_id) REFERENCES artists (artist_id);

ALTER TABLE song_release
ADD CONSTRAINT FK_song_release_songs FOREIGN KEY (song_id) REFERENCES songs (song_id);

ALTER TABLE song_release
ADD CONSTRAINT FK_song_release_genres FOREIGN KEY (genre_id) REFERENCES genres (genre_id);


