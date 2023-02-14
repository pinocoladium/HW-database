SELECT name, year FROM Album
WHERE year = 2018;

SELECT name, duration FROM Track
ORDER BY duration DESC
LIMIT 1;

SELECT name FROM Track
WHERE duration >= 00:03:30

SELECT name FROM Compilation
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM Performer
ORDER BY CHAR_LENGTH(`name`)
LIMIT 1;

SELECT name FROM Track
WHERE name LIKE '%my%';

