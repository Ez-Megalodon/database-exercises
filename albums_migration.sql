USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(65) NOT NULL,
    name VARCHAR(65) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(30) NOT NULL,
    primary key (id),
    UNIQUE KEY unique_album (name, artist)
);