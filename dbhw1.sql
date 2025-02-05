create table if not exists genres(
id serial primary key,
name varchar(30) not null
)

create table if not exists executors(
id serial primary key,
name varchar(60) not null
)

create table if not exists albums(
id serial primary key,
name varchar(60) not null,
year smallint check (year > 0)
)

create table if not exists executorsgenres(
executor_id int not null references executors(id),
genre_id int not null references genres(id),
constraint pk primary key (executor_id, genre_id)
)

create table if not exists executorsalbums(
executor_id int not null references executors(id),
album_id int not null references albums(id),
constraint ea_pk primary key (executor_id, album_id)
)

create table if not exists songs(
id serial primary key,
name varchar(50) not null,
duration time not null,
album_id int not null references albums(id)
)

create table if not exists collections(
id serial primary key,
name varchar(80) not null,
year smallint check (year > 0)
)

create table if not exists songscollections(
song_id int not null references songs(id),
collection_id int not null references collections(id),
constraint sc_pk primary key (song_id, collection_id)
)