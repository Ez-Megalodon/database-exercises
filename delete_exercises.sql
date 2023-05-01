USE codeup_test_db;

select 'Delete albums released after: 1991' as 'info';
delete from albums
where release_date < 1991;
select * from albums;

select 'Delete albums with the genre: disco' as 'info';
delete from albums
where genre = 'disco';
select * from albums;

select 'Delete albums by Whitney Houston' as 'info';
delete from albums
where artist = 'Whitney Houston';
select * from albums;