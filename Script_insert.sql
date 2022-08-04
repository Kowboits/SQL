insert into genre ("name")
values
('rock'),
('pop'),
('grandg'),
('classic'),
('havy metall');

insert into musician ("name")
values
('ac/dc'),
('metallica'),
('ariya'),
('deep purple'),
('nirvana'),
('kino'),
('U2'),
('Chizh');

insert into music_genre (genre_id,musician_id)
values
(1,2),
(1,1),
(2,7),
(1,6),
(5,4),
(3,2),
(4,3),
(4,4),
(2,8);

insert into album ("name","year")
values
('cool album', 2018),
('first alnum', 2020),
('sec alb',2018),
('best alb',2000),
('new alb',2019),
('next alb',2022),
('album next', 2000),
('very cool alb', 2000);

insert into album_musician (album_id,musician_id)
values
(1,2),
(2,3),
(3,1),
(3,2),
(4,5),
(5,4),
(6,8),
(7,6),
(8,7);

insert into track ("name",duration,album_id)
values
('track','00:02:40',1),
('singl','00:05:10',2),
('mega hit', '00:03:45',2),
('hit', '00:05:30',3),
('super', '00:06:00',1),
('song', '00:02:50',4),
('super song', '00:04:30',5),
('dance', '00:07:00', 5),
('best', '00:06:45', 6),
('fast', '00:04:45',6),
('moon','00:03:55',7),
('sunligth', '00:05:43',8),
('my life', '00:03:50',8),
('my way', '00:05:45',3),
('life', '00:03:25',4);

insert into play_list ("name","year")
values
('mega hits', 2017),
('dance factory', 2018),
('song control', 2021),
('best of rock', 2015),
('new generation', 2020),
('millenium', 2000),
('bestsellers', 2019),
('new life', 2021);

insert into track_list (track_id,play_list_id)
values
(1,1),
(1,2),
(12,2),
(4,3),
(6,5),
(11,5),
(10,3),
(8,4),
(9,4),
(13,6),
(14,5),
(15,7),
(2,8),
(3,8);


