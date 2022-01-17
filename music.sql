create table if not exists category(
	id serial primary key,
	category_name varchar(50) unique
);
create table if not exists artist(
	id_category integer references category(id),
	id_artist serial primary key,
	artist_name varchar(50) not null
);
create table if not exists albumn(
	id_artist integer references artist(id_artist),
	id_albumn serial primary key,
	name_albumn text not null unique,
	age date not null
);
create table if not exists song(
	id_albumn integer references albumn(id_albumn),
	song_name text not null unique,
	duration numeric(2,2),
	artist integer references artist(id_artist)
);