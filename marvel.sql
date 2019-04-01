DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);
INSERT INTO people (name) VALUES ('Atyha	Arshad');
INSERT INTO people (name) VALUES ('Calum Cannon');
INSERT INTO people (name) VALUES ('Stelios Constantinou-Briggs');
INSERT INTO people (name) VALUES ('Sridevi Dara');
INSERT INTO people (name) VALUES ('Paul Flannery');
INSERT INTO people (name) VALUES ('Lindsey Izzard');
INSERT INTO people (name) VALUES ('Hugh Jarvis');
INSERT INTO people (name) VALUES ('Tony Goncalves');
INSERT INTO people (name) VALUES ('Scott Maitland');
INSERT INTO people (name) VALUES ('David McAllister');
INSERT INTO people (name) VALUES ('Mhairi McCrindle');
INSERT INTO people (name) VALUES ('Anne McKendry');
INSERT INTO people (name) VALUES ('John Muir');
INSERT INTO people (name) VALUES ('Kevin O`Hagan');
INSERT INTO people (name) VALUES ('Darren Shankland');
INSERT INTO people (name) VALUES ('Danny	Welsh');
INSERT INTO people (name) VALUES ('Theo Wright');
INSERT INTO people (name) VALUES ('Ally');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '13:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:30');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:05');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '14:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '15:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '17:35');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:20');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '20:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '14:20');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '14:50');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man and the Wasp', 2018, '20:15');
INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2018, '00:15');

UPDATE people SET name = 'John Moir' WHERE name = 'John Muir';

DELETE  FROM movies WHERE id = 9 ;

DELETE FROM people WHERE name = 'Tony Goncalves';

-- DELETE FROM movies WHERE id = 12;


 UPDATE movies SET (year, show_time) = (2014, '17:20') WHERE (year, show_time) = (2017, '17:35');

 DELETE FROM movies
 WHERE id in
 (SELECT id from movies WHERE id < 3);

 DELETE FROM movies
WHERE movies.year = ANY (SELECT year FROM movies WHERE year = 2011);
