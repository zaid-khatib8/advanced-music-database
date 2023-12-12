CREATE TABLE label(
	label_ID char(4),
	label_name varchar(30),
	location varchar(30), 
	PRIMARY KEY (label_ID)
);


CREATE TABLE artist(
	artist_ID char(5),
	artist_name varchar(30),
	PRIMARY KEY (artist_ID)
);


CREATE TABLE album(
	album_ID varchar(10),
	album_title varchar(30),
	artist_ID char(5),
	label_ID char(4),
	release_date date,
	PRIMARY KEY (album_ID),
	FOREIGN KEY (label_ID) REFERENCES label(label_ID),
	FOREIGN KEY (artist_ID) REFERENCES artist
);


CREATE TABLE track (
	song_ID char(8),
	song_title char(50),
	artist_ID char(5),
	album_ID varchar(10),
	length int,
	bpm float,
	music_key varchar(10),
	primary_genre varchar(30),
	secondary_genre varchar(30),
	mood varchar(30),
	danceability smallint,
	PRIMARY KEY (song_ID),
	FOREIGN KEY (artist_ID) REFERENCES artist,
	FOREIGN KEY (album_ID) REFERENCES album
);

CREATE TABLE genre(
	primary_genre varchar(30),
	secondary_genre varchar(30),
	curr_popularity smallint,
	PRIMARY KEY (primary_genre, secondary_genre)
);

CREATE TABLE harmonic_content (
	music_key varchar(10),
	frequency smallint,
	PRIMARY KEY (music_key)
);

CREATE TABLE vibe (
	mood varchar(30),
	danceability smallint,
	venue varchar(30),
	PRIMARY KEY (mood, danceability)
);

CREATE TABLE user (
	user_ID char(5),
	name varchar(30),
	profession varchar(30),
	PRIMARY KEY (user_ID)
);

CREATE TABLE playlist (
	playlist_ID char(5),
	playlist_name varchar(50),
	user_ID char(5),
	purpose varchar(30),
	PRIMARY KEY (playlist_ID)	
	FOREIGN KEY (user_ID) REFERENCES user
);



CREATE TABLE playlist_contents (
	playlist_ID char(5),
	song_ID char(8),
	PRIMARY KEY (playlist_ID, song_ID)
);
