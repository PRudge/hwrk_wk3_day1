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

INSERT INTO people (name) VALUES ('Gábor Budai');
INSERT INTO people (name) VALUES ('Abigaila Ekiert');
INSERT INTO people (name) VALUES ('Nuno Farinha');
INSERT INTO people (name) VALUES ('Ruben Franco Sanchez');
INSERT INTO people (name) VALUES ('Richard Haigh');
INSERT INTO people (name) VALUES ('Chika Kanu');
INSERT INTO people (name) VALUES ('Aaron McFaull');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('John Polson');
INSERT INTO people (name) VALUES ('Kiran Qureshi');
INSERT INTO people (name) VALUES ('Ethan Radcliffe');
INSERT INTO people (name) VALUES ('Janapoles Ramos');
INSERT INTO people (name) VALUES ('Gordon Renfrew');
INSERT INTO people (name) VALUES ('Pauline Rudge');
INSERT INTO people (name) VALUES ('Martin Selis');
INSERT INTO people (name) VALUES ('Alex Shing');
INSERT INTO people (name) VALUES ('Anita Squires');
INSERT INTO people (name) VALUES ('Anthatony Starkes');
INSERT INTO people (name) VALUES ('Elisa Sveinsdottir');
INSERT INTO people (name) VALUES ('Hamish Whyte');
INSERT INTO people (name) VALUES ('Matthew Woodley');
INSERT INTO people (name) VALUES ('Emil Zacharczuk');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:00');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '17:10');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '13:05');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '19:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Infinity War', 2018, '18:50');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man and the Wasp', 2018, '19:55');

-- SELECT * FROM movies;
-- SELECT name FROM people;
--
-- UPDATE people SET name = 'Anthony Starke' WHERE name = 'Anthatony Starkes';
-- SELECT *  FROM people WHERE id = 14;
--
-- DELETE FROM movies WHERE title = 'Batman Begins';
-- INSERT INTO people (name) VALUES ('Sandy McMillan');
--
-- DELETE FROM people WHERE name = 'Craig Morton';
-- INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '00:00');


-- UPDATE movies SET show_time = (SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy')
-- WHERE title = 'Guardians of the Galaxy 2';

UPDATE movies SET show_time = (SELECT (show_time::time + INTERVAL '2h')::text FROM movies WHERE title = 'Guardians of the Galaxy')
WHERE title = 'Guardians of the Galaxy 2';

select * from movies;
