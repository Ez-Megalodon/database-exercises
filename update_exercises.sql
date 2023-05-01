USE codeup_test_db;

select * from albums;

select * from albums where release_date < 1980;

select  * from  albums where artist = 'Michael Jackson';


update albums
set sales = sales * 10;
select 'Make the albums much more popular! Times sales by 10!' as 'info';
select * from albums;


update albums
set release_date = release_date - 100
where release_date < 1980;
select 'Move all the albums before 1980 back to the 1800s.' as 'info';
select * from albums;


update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select 'Change Michael Jackson to Peter Jackson' as 'info';
select * from albums;
