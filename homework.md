# SQL Homework

The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;
2.  Return ONLY the name column from the 'people' table
SELECT name FROM people;
3.  Oops! Someone at CodeClan spelled Anthony's name wrong! Change it to reflect the proper spelling ('Anthatony Starkes' should be 'Anthony Starke').
UPDATE people SET name = 'Anthony Starke' WHERE name = 'Anthatony Starkes';
4.  Return ONLY your name from the 'people' table.
SELECT *  FROM people WHERE id = 14;
5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
6.  Create a new entry in the 'people' table with the name of one of the instructors.
SELECT name FROM people;
7.  Craig Morton has decided to hijack our movie evening, remove him from the table of people.
DELETE FROM people WHERE name = 'Craig Morton';
8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Captain Marvel'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '00:00');
9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
UPDATE movies SET show_time = (SELECT (show_time::time + INTERVAL '2h')::text FROM movies WHERE title = 'Guardians of the Galaxy')
WHERE title = 'Guardians of the Galaxy 2'; - I can't get rid of the seconds and I spent hours trying!


## Extension

1.  Research how to delete multiple entries from your table in a single command.
DELETE FROM TableName
WHERE
column = value1 ||
column = value2 ||
column = value4 ||
column = value5
;
