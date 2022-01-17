create table depart(
	name_depart text primary key,
	name varchar(40) not null
);
create table boss(
	name_boss varchar(40),
	name_dapart text primary key references depart(name_depart)
);