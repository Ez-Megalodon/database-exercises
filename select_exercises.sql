USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre from albums where name = 'Nevermind';

select * from albums where release_date between 1990 AND 1999;

select * from albums where sales <= 20;

select * from albums where genre = 'Rock';
