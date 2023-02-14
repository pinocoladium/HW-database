CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	performer_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	pseudonym VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Genre_performer (
	id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES Genre(genre_id),
	performer_id INTEGER REFERENCES Performer(performer_id)
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	year INTEGER CHECK (year > 1900) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer_album (
	id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES Performer(performer_id),
	performer_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration < 900),
	album INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Compilation (
	compilation_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	year INTEGER NOT NULL CHECK (year > 1900) 
);

CREATE TABLE IF NOT EXISTS Track_compilation (
	id SERIAL PRIMARY KEY,
    track_id INTEGER REFERENCES Track(track_id),
	compilation_id INTEGER REFERENCES Compilation(compilation_id)
);