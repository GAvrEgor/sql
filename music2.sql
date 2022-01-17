create table if not exists category(
	id_category serial primary key,
	category_name varchar(50) unique
);
create table if not exists artist(
	id_artist serial primary key,
	artist_name varchar(50),
	id_albumn int not null unique
);
create table if not exists CategoryArtist(
	id_category integer not null  references category(id_category),
	id_artist integer not null  references artist(id_artist),
	constraint pk primary key (id_artist, id_category)
);
create table if not exists albumn(
	id_albumn serial primary key references artist(id_albumn),
	name_albumn text not null unique,
	age date not null
);
create table if not exists track(
	id_track serial primary key,
	id_albumn integer references albumn(id_albumn),
	track_name text not null unique,
	duration numeric(2,2),
	artist_name varchar(40)
);
create table if not exists playlist(
	Name_playlist varchar(50) not null unique,
	age_playlist date not null,
	id_albumn int not null references albumn(id_albumn),
	id_track int not null references track(id_track)
);