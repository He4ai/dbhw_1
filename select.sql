select name, duration 
from songs
where duration = (select max(duration) from songs);

select name 
from songs
where duration >= 210;

select name 
from collections 
where year between 2018 and 2020;

select name 
from executors
where name not like '% %';

select name 
from songs
where name like '%my%';


select name, count(genre_id)
from genres, executorsgenres
group by name;


select g.name, count(e.id)
from genres g
left join executorsgenres eg on g.id=eg.genre_id
left join executors e on e.id = eg.executor_id
group by g.name;

select a.name, count(s.id)
from albums a 
left join songs s on s.album_id = a.id
where a.year between 2019 and 2020
group by a.name;

select a.name, avg(s.duration)
from albums a 
left join songs s on s.album_id = a.id
group by a.name;

select e.name 
from executors e 
where not exists(
	select 1
	from executorsalbums ea
	join albums a on ea.album_id = a.id
	where ea.executor_id = e.id and a.year = 2020
);


select c.name 
from collections c 
left join songscollections sc on sc.collection_id = c.id 
left join songs s on sc.song_id = s.id
left join albums a on a.id = s.album_id 
left join executorsalbums ea on ea.album_id = a.id 
left join executors e on e.id = ea.executor_id 
where e.name = 'Taylor Swift';
