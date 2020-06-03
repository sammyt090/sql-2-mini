--part 1
create table movie (
    movie_id serial primary key,
    title text,
    media_type_id int references media_type(media_type_id)
)

insert into movie (title, media_type_id)
values
('Gattaca', 3),
('Voldemort and the Pesky Child', 3);

--part 2

alter table movie
add column genre_id int references genre(genre_id);

update movie
set genre_id = 20
where movie_id = 1;

update movie
set genre_id = 22
where movie_id = 2;

--part 3 joins
select title, name from movie
join genre on movie.genre_id = genre.genre_id;

--or select * from movie m
--join genre g on m.genre_id = g.genre_id

select ar.name, al.title from artist ar
join album al on ar.artist_id = al.artist_id;


select * from track
where genre_id in (select genre_id from genre
                   where name in ('Jazz', 'Blues'));

--set vals to null

select * from employee
where employee_id = 1;

update employee 
set phone = null
where employee_id = 1;

select * from customer
where company is null


select distinct country from customer;


select * from customer where fax is null

delete from customer
where fax is null