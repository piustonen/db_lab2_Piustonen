CREATE TABLE Genres
(
  genre_id      char(10)  NOT NULL ,
  genre_name    char(50)  NOT NULL 
);

CREATE TABLE Songs
(
  song_id      char(10)  NOT NULL ,
  song_name    char(50)  NOT NULL 
);

CREATE TABLE Artists
(
  artist_id      char(10)  NOT NULL ,
  artist_name    char(50)  NOT NULL 
);
CREATE TABLE Releases
(
  release_id      char(10)  NOT NULL ,
  genre_id        char(10)  NOT NULL ,
  song_id         char(10)  NOT NULL ,
  release_date    date      NOT NULL ,
  release_time    time      NULL     ,
  release_place   char(50)  NULL
);
CREATE TABLE Performances
(
  perf_id        char(10)   NOT NULL ,
  artist_id      char(10)   NOT NULL ,
  song_id        char(10)   NOT NULL ,
  perf_date      date       NOT NULL ,
  perf_time      time       NULL     ,
  perf_place     char(50)   NULL 
);
ALTER TABLE Genres ADD CONSTRAINT PK_Genre PRIMARY KEY (genre_id);
ALTER TABLE Songs ADD CONSTRAINT PK_Songs PRIMARY KEY (song_id);
ALTER TABLE Artists ADD CONSTRAINT PK_Artists PRIMARY KEY (artist_id);
ALTER TABLE Releases ADD CONSTRAINT PK_Releases PRIMARY KEY (release_id);
ALTER TABLE Performances ADD CONSTRAINT PK_Performances PRIMARY KEY (perf_id);

ALTER TABLE Releases
ADD CONSTRAINT FK_Releases_Genres FOREIGN KEY (genre_id) REFERENCES Genres (genre_id);
ALTER TABLE Releases
ADD CONSTRAINT FK_Releases_Songs FOREIGN KEY (song_id) REFERENCES Songs (song_id);

ALTER TABLE Performances
ADD CONSTRAINT FK_Performances_Artists FOREIGN KEY (artist_id) REFERENCES Artists (artist_id);
ALTER TABLE Performances
ADD CONSTRAINT FK_Performances_Songs FOREIGN KEY (song_id) REFERENCES Songs (song_id);
