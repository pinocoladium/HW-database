CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Performer (
	performer_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	pseudonym VARCHAR(20),
	genre INTEGER NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Genre_performer (
	id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES Genre(genre_id),
	performer_id INTEGER REFERENCES Performer(performer_id),
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	year VARCHAR(20),
	performer INTEGER NOT NULL REFERENCES Performer(performer_id)
);

CREATE TABLE IF NOT EXISTS Performer_album (
	id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES Performer(performer_id),
	performer_id INTEGER REFERENCES Album(album_id),
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	duration VARCHAR(20),
	album INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Album_track (
	id SERIAL PRIMARY KEY,
    album_id INTEGER REFERENCES Album(album_id),
	track_id INTEGER REFERENCES Track(track_id),
);

CREATE TABLE IF NOT EXISTS Compilation (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	year VARCHAR(20),
	tracks INTEGER NOT NULL REFERENCES Album_track(id)
);