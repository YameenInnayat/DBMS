USE movie_management;

-- Clear existing dependent data first
DELETE FROM movie_actors;
DELETE FROM movie_directors;
DELETE FROM movie_genres;
DELETE FROM movies;

-- Languages
INSERT INTO languages (language_id, language_name) VALUES
(1,'English'),
(2,'Hindi'),
(3,'Urdu'),
(4,'Kashmiri'),
(5,'Tamil'),
(6,'Telugu'),
(7,'Malayalam'),
(8,'Kannada'),
(9,'Bengali'),
(10,'Punjabi');

-- Genres
INSERT INTO genres (genre_id, genre_name) VALUES
(1,'Action'),
(2,'Adventure'),
(3,'Comedy'),
(4,'Drama'),
(5,'Thriller'),
(6,'Horror'),
(7,'Romance'),
(8,'Sci-Fi'),
(9,'Fantasy'),
(10,'Crime');

-- Actors
INSERT INTO actors
(actor_id, actor_name, date_of_birth, nationality) VALUES
(1,'Leonardo DiCaprio','1974-11-11','American'),
(2,'Tom Hardy','1977-09-15','British'),
(3,'Robert Downey Jr.','1965-04-04','American'),
(4,'Christian Bale','1974-01-30','British'),
(5,'Tom Hanks','1956-07-09','American'),
(6,'Brad Pitt','1963-12-18','American'),
(7,'Keanu Reeves','1964-09-02','Canadian'),
(8,'Shah Rukh Khan','1965-11-02','Indian'),
(9,'Aamir Khan','1965-03-14','Indian'),
(10,'Ranbir Kapoor','1982-09-28','Indian'),
(11,'Matthew McConaughey','1969-11-04','American'),
(12,'Aamir Bashir','1979-03-03','Indian'),
(13,'Fatima Sana Shaikh','1992-01-11','Indian'),
(14,'Sanya Malhotra','1992-02-25','Indian'),
(15,'Deepika Padukone','1986-01-05','Indian'),
(16,'Alia Bhatt','1993-03-15','Indian'),
(17,'Amitabh Bachchan','1942-10-11','Indian'),
(18,'Chris Evans','1981-06-13','American'),
(19,'Scarlett Johansson','1984-11-22','American'),
(20,'Mark Ruffalo','1967-11-22','American'),
(21,'Natalie Portman','1981-06-09','American');

-- Directors
INSERT INTO directors
(director_id, director_name, date_of_birth, nationality) VALUES
(1,'Christopher Nolan','1970-07-30','British'),
(2,'Steven Spielberg','1946-12-18','American'),
(3,'David Fincher','1962-08-28','American'),
(4,'Quentin Tarantino','1963-03-27','American'),
(5,'James Cameron','1954-08-16','Canadian'),
(6,'Robert Zemeckis','1952-05-14','American'),
(7,'Rajkumar Hirani','1962-11-20','Indian'),
(8,'Sanjay Leela Bhansali','1963-02-24','Indian'),
(9,'Karan Johar','1972-05-25','Indian'),
(10,'Anurag Kashyap','1972-09-10','Indian');

-- Production Houses
INSERT INTO production_houses
(production_house_id, name, country) VALUES
(1,'Warner Bros.','USA'),
(2,'Universal Pictures','USA'),
(3,'Paramount Pictures','USA'),
(4,'Sony Pictures','USA'),
(5,'Columbia Pictures','USA'),
(6,'20th Century Studios','USA'),
(7,'DreamWorks Pictures','USA'),
(8,'Yash Raj Films','India'),
(9,'Dharma Productions','India'),
(10,'Rajkumar Hirani Films','India');

-- Movies
INSERT INTO movies
(movie_id, title, release_date, duration, language_id,
 production_house_id, description, age_rating, rating) VALUES

(1,'Inception','2010-07-16',148,1,1,
'A thief who enters dreams to steal secrets.','PG-13',4.8),

(2,'The Dark Knight','2008-07-18',152,1,1,
'Batman faces a dangerous criminal mastermind.','PG-13',4.9),

(3,'Interstellar','2014-11-07',169,1,1,
'A team travels through space to find a new home for humanity.','PG-13',4.8),

(4,'Titanic','1997-12-19',195,1,3,
'A romance develops aboard the doomed Titanic.','PG-13',4.7),

(5,'Forrest Gump','1994-07-06',142,1,2,
'The life journey of a simple but remarkable man.','PG-13',4.6),

(6,'The Matrix','1999-03-31',136,1,4,
'A computer hacker discovers the true nature of reality.','R',4.7),

(7,'3 Idiots','2009-12-25',170,2,10,
'Three engineering students experience college life and friendship.','PG',4.8),

(8,'Dangal','2016-12-23',161,2,8,
'A former wrestler trains his daughters to become champions.','PG',4.6),

(9,'Kabhi Khushi Kabhie Gham','2001-12-14',210,2,9,
'A family drama about love, relationships and reconciliation.','PG',4.3),

(10,'Rockstar','2011-11-11',159,2,8,
'A young musician struggles through love and fame.','PG-13',4.4),

(11,'The Revenant','2015-12-25',156,1,1,
'A frontiersman seeks survival and revenge after being left for dead.','R',4.5),

(12,'Fight Club','1999-10-15',139,1,5,
'An office worker forms an underground fight club.','R',4.6),

(13,'John Wick','2014-10-24',101,1,4,
'A retired assassin returns to his old life after a personal loss.','R',4.5),

(14,'Avengers: Endgame','2019-04-26',181,1,4,
'The Avengers attempt to undo the destruction caused by Thanos.','PG-13',4.8),

(15,'Black Panther','2018-02-16',134,1,4,
'A king returns home and must protect his kingdom.','PG-13',4.4),

(16,'The Wolf of Wall Street','2013-12-25',180,1,1,
'A stockbroker rises to wealth and power through questionable practices.','R',4.3),

(17,'Om Shanti Om','2007-11-09',162,2,8,
'A film actor is reincarnated and seeks to uncover the truth about his past.','PG',4.2),

(18,'Yeh Jawaani Hai Deewani','2013-05-31',160,2,9,
'Four friends experience love, travel and the changes of adulthood.','PG',4.4),

(19,'Padmaavat','2018-01-25',164,2,8,
'A historical drama about a Rajput queen and a powerful ruler.','PG-13',4.1),

(20,'Bhaag Milkha Bhaag','2013-07-12',189,2,10,
'The story of an Indian athlete who rises to international success.','PG',4.5);

-- Actor relationships
INSERT INTO movie_actors (movie_id, actor_id, role_name) VALUES
(1,1,'Dom Cobb'),
(1,2,'Eames'),
(2,4,'Bruce Wayne'),
(3,11,'Cooper'),
(4,5,'Jack Dawson'),
(5,5,'Forrest Gump'),
(6,7,'Neo'),
(7,9,'Rancho'),
(8,13,'Geeta Phogat'),
(8,14,'Babita Kumari'),
(9,8,'Rahul Raichand'),
(9,17,'Yashvardhan Raichand'),
(10,10,'Janardhan'),
(11,1,'Hugh Glass'),
(12,6,'Tyler Durden'),
(13,7,'John Wick'),
(14,3,'Tony Stark'),
(14,18,'Steve Rogers'),
(14,19,'Natasha Romanoff'),
(14,20,'Bruce Banner'),
(15,18,'Supporting Role'),
(16,1,'Jordan Belfort'),
(17,8,'Om Prakash'),
(18,10,'Kabir Thapar'),
(18,15,'Naina Talwar'),
(19,15,'Supporting Role'),
(20,12,'Supporting Role');

-- Director relationships
INSERT INTO movie_directors (movie_id, director_id) VALUES
(1,1),
(2,1),
(3,1),
(4,5),
(5,6),
(6,4),
(7,7),
(8,7),
(9,9),
(10,8);

-- Genre relationships
INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1,2),
(1,5),
(1,8),

(2,1),
(2,5),

(3,2),
(3,8),

(4,4),
(4,7),

(5,3),
(5,4),

(6,1),
(6,5),
(6,8),

(7,3),
(7,4),

(8,4),

(9,4),
(9,7),

(10,4),

(11,2),
(11,4),

(12,5),
(12,10),

(13,1),
(13,5),

(14,1),
(14,2),
(14,8),

(15,1),
(15,2),
(15,9),

(16,4),
(16,10),

(17,4),
(17,7),

(18,4),
(18,7),

(19,4),

(20,4);

-- Check everything
SELECT * FROM movies;
SELECT * FROM movie_actors;
SELECT * FROM movie_directors;
SELECT * FROM movie_genres;
