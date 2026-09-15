USE movie_management;


-- 1. Display all movies

SELECT *
FROM movies;


-- 2. Find a movie by title

SELECT *
FROM movies
WHERE title = 'Inception';


-- 3. Find movies by language

SELECT m.title, l.language_name
FROM movies m
JOIN languages l
ON m.language_id = l.language_id
WHERE l.language_name = 'English';


-- 4. Find movies by genre

SELECT m.title, g.genre_name
FROM movies m
JOIN movie_genres mg
ON m.movie_id = mg.movie_id
JOIN genres g
ON mg.genre_id = g.genre_id
WHERE g.genre_name = 'Action';


-- 5. Find all movies of an actor

SELECT m.title
FROM movies m
JOIN movie_actors ma
ON m.movie_id = ma.movie_id
JOIN actors a
ON ma.actor_id = a.actor_id
WHERE a.actor_name = 'Matthew McConaughey';


-- 6. Find all actors in a movie

SELECT a.actor_name, ma.role_name
FROM actors a
JOIN movie_actors ma
ON a.actor_id = ma.actor_id
JOIN movies m
ON ma.movie_id = m.movie_id
WHERE m.title = 'Inception';


-- 7. Find the director of a movie

SELECT d.director_name
FROM directors d
JOIN movie_directors md
ON d.director_id = md.director_id
JOIN movies m
ON md.movie_id = m.movie_id
WHERE m.title = 'Inception';


-- 8. Find movies by director

SELECT m.title
FROM movies m
JOIN movie_directors md
ON m.movie_id = md.movie_id
JOIN directors d
ON md.director_id = d.director_id
WHERE d.director_name = 'Christopher Nolan';


-- 9. Find movies with rating above 4

SELECT title, rating
FROM movies
WHERE rating > 4;


-- 10. Find the highest-rated movie

SELECT title, rating
FROM movies
WHERE rating = (
    SELECT MAX(rating)
    FROM movies
);


-- 11. Find the lowest-rated movie

SELECT title, rating
FROM movies
WHERE rating = (
    SELECT MIN(rating)
    FROM movies
);


-- 12. Find movies released after 2020

SELECT title, release_date
FROM movies
WHERE release_date > '2020-01-01';


-- 13. Find movies longer than 2 hours

SELECT title, duration
FROM movies
WHERE duration > 120;


-- 14. Display movie details with language and production house

SELECT
    m.title,
    m.release_date,
    m.duration,
    l.language_name,
    p.name AS production_house,
    m.age_rating,
    m.rating
FROM movies m
JOIN languages l
ON m.language_id = l.language_id
JOIN production_houses p
ON m.production_house_id = p.production_house_id;


-- 15. Count movies by language

SELECT
    l.language_name,
    COUNT(m.movie_id) AS movie_count
FROM languages l
LEFT JOIN movies m
ON l.language_id = m.language_id
GROUP BY l.language_name;


-- 16. Count movies by genre

SELECT
    g.genre_name,
    COUNT(mg.movie_id) AS movie_count
FROM genres g
LEFT JOIN movie_genres mg
ON g.genre_id = mg.genre_id
GROUP BY g.genre_name;


-- 17. Find average movie rating

SELECT AVG(rating) AS average_rating
FROM movies;


-- 18. Find movies with rating between 4 and 5

SELECT title, rating
FROM movies
WHERE rating BETWEEN 4 AND 5
ORDER BY rating DESC;


-- 19. Search movies whose title contains a word

SELECT title
FROM movies
WHERE title LIKE '%Dark%';


-- 20. Display movies in descending order of rating

SELECT title, rating
FROM movies
ORDER BY rating DESC;