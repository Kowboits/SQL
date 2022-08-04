select g."name", count(mg.musician_id) from music_genre mg
join genre g on mg.genre_id = g.id 
join musician m on mg.musician_id = m.id 
group by g."name" 

select a."name", count(t.id) from track t 
join album a on t.album_id = a.id
where a."year" between 2019 and 2020
group by a."name"

select a."name", avg(t.duration) from track t 
join album a on t.album_id = a.id
group by a."name"

select m."name", count(a.id) from album_musician am 
join musician m on am.musician_id = m.id 
join album a on am.album_id = a.id
where a."year" != 2020
group by m."name" 

select pl."name" from play_list pl 
join track_list tl on pl.id = tl.play_list_id 
join track t on tl.track_id = t.id 
join album a on t.album_id = a.id 
join album_musician am on a.id = am.album_id 
join musician m on am.musician_id = m.id 
where m."name" = 'Chizh'
group by pl."name" 

select a."name", count(g.id) from album a 
join album_musician am on a.id = am.album_id 
join musician m on am.musician_id = m.id 
join music_genre mg on m.id = mg.musician_id 
join genre g on mg.genre_id = g.id 
group by a."name"  
having count(g.id) > 1 

select t."name", pl.id from track t
full join track_list tl on t.id = tl.track_id 
full join play_list pl on tl.play_list_id = pl.id 
where pl.id is null

select m."name", t.duration  from musician m 
join album_musician am on m.id = am.musician_id 
join album a on am.album_id = a.id 
join track t on a.id = t.album_id 
where t.duration = (select MIN(t2.duration) from track t2 )

with track_count as ( select distinct (a."name"), count(t.id) as t_count  from album a
join track t on a.id = t.album_id 
group by a."name")
select name from track_count
where t_count <= (select min(t_count) from track_count )








 

 



