CREATE TABLE if not exists genres (
	id serial primary key,
	name varchar(50) unique
);

CREATE TABLE if not exists singers (
	id serial primary key,
	name text
);

-- Link between singers and albums
CREATE TABLE if not exists genresinger (
	genre_id integer references genres(id),
	singer_id integer references singers(id),
	constraint genresingerpk primary key (genre_id, singer_id)
);

CREATE TABLE if not exists albums (
	id serial primary key,
	name text,
	year integer
);

-- Link between singers and almums
CREATE TABLE if not exists singeralbum (
	singer_id integer references singers(id),
	album_id integer references albums(id),
	constraint singeralbum_pk primary key (singer_id, album_id)
);

CREATE TABLE if not exists tracks (
	id serial primary key,
	name text,
	duration integer,
	album_id integer references albums(id)
);

CREATE TABLE if not exists collections (
	id serial primary key,
	name text unique,
	year integer
);

-- Link between collections and tracks
CREATE TABLE if not exists collectiontrack (
	collection_id integer references collections(id),
	track_id integer references tracks(id),
	constraint genresinger_pk primary key (collection_id, track_id)
);