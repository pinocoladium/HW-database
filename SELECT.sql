SELECT name_album, year FROM Album
WHERE year = 2018;

SELECT name, duration*1.0 / 60 FROM Track
ORDER BY duration DESC
LIMIT 1;

SELECT name FROM Track
WHERE duration >= 210

SELECT name FROM Compilation
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM Performer
ORDER BY CHAR_LENGTH(name)
LIMIT 1;

SELECT name FROM Track
WHERE LOWER(name) LIKE '%my%';



SELECT name, COUNT(performer_id) FROM genre_performer gp
JOIN genre g ON gp.genre_id = g.genre_id
GROUP BY g.name
ORDER BY count DESC;

SELECT name, year, COUNT(track_id) from Track_compilation tc 
JOIN compilation c ON tc.compilation_id = c.compilation_id
WHERE year BETWEEN 2019 AND 2020
GROUP BY c.year, c.name;

SELECT name_album , AVG(duration*1.0 / 60) from Album a
JOIN Track t ON a.album_id = t.album
GROUP BY a.name_album
ORDER BY AVG DESC;

SELECT name from Performer p
JOIN Performer_album pa ON p.performer_id = pa.performer_id
JOIN Album a ON a.album_id = pa.album_id
WHERE year =! 2020 

SELECT name from Compilation c
JOIN Track_compilation tc ON c.compilation_id = tc.compilation_id
JOIN  Track t ON tc.track_id = t.track_id
JOIN Album a ON t.album = a.name_album 
JOIN Performer_album pa ON a.album_id = pa.album_id
JOIN Performer p ON pa.performer_id = p.performer_id
WHERE name = 'Till';