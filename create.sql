CREATE TABLE cloud_genres
(
  genre_id      char(30)  NOT NULL ,
  genre_name    char(30)  NOT NULL 
);
CREATE TABLE cloud_songs
(
  song_id      char(30)  NOT NULL ,
  song_name    char(30)  NOT NULL 
);
CREATE TABLE cloud_artists
(
  artist_id      char(30)  NOT NULL ,
  artist_name    char(30)  NOT NULL 
);
CREATE TABLE cloud_releases
(
  release_id      char(30)  NOT NULL ,
  genre_id        char(30)  NOT NULL ,
  song_id         char(30)  NOT NULL ,
  release_date    date      NOT NULL ,
  release_time    time      NULL     ,
  release_place   char(30)  NULL
);

CREATE TABLE cloud_performances
(
  perf_id        char(30)   NOT NULL ,
  artist_id      char(30)   NOT NULL ,
  song_id        char(30)   NOT NULL ,
  perf_date      date       NOT NULL ,
  perf_time      time       NULL     ,
  perf_place     char(30)   NULL 
);

ALTER TABLE cloud_genres ADD CONSTRAINT PK_cloud_genres PRIMARY KEY (genre_id);
ALTER TABLE cloud_songs ADD CONSTRAINT PK_cloud_songs PRIMARY KEY (song_id);
ALTER TABLE cloud_artists ADD CONSTRAINT PK_cloud_artists PRIMARY KEY (artist_id);
ALTER TABLE cloud_releases ADD CONSTRAINT PK_cloud_releases PRIMARY KEY (release_id);
ALTER TABLE cloud_performances ADD CONSTRAINT PK_cloud_performances PRIMARY KEY (perf_id);


ALTER TABLE cloud_releases
ADD CONSTRAINT FK_cloud_releases_cloud_genres FOREIGN KEY (genre_id) REFERENCES cloud_genres (genre_id);
ALTER TABLE cloud_releases
ADD CONSTRAINT FK_cloud_releases_cloud_songs FOREIGN KEY (song_id) REFERENCES cloud_songs (song_id);

ALTER TABLE cloud_performances
ADD CONSTRAINT FK_cloud_performances_cloud_artists FOREIGN KEY (artist_id) REFERENCES cloud_artists (artist_id);
ALTER TABLE cloud_performances
ADD CONSTRAINT FK_cloud_performances_cloud_songs FOREIGN KEY (song_id) REFERENCES cloud_songs (song_id);
