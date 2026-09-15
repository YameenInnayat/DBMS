-- Movie Data Management System

CREATE DATABASE movie_management;

USE movie_management;


-- Users table

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    registration_date DATE DEFAULT (CURRENT_DATE)
);


-- Languages table

CREATE TABLE languages (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(50) NOT NULL UNIQUE
);


-- Genres table

CREATE TABLE genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL UNIQUE
);


-- Actors table

CREATE TABLE actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(50)
);


-- Directors table

CREATE TABLE directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(50)
);


-- Production Houses table

CREATE TABLE production_houses (
    production_house_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    country VARCHAR(50)
);


-- Movies table

CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    release_date DATE NOT NULL,
    duration INT,
    language_id INT,
    production_house_id INT,
    description TEXT,
    age_rating VARCHAR(10),
    rating DECIMAL(2,1),

    FOREIGN KEY (language_id)
        REFERENCES languages(language_id),

    FOREIGN KEY (production_house_id)
        REFERENCES production_houses(production_house_id)
);


-- Movie Actors table

CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    role_name VARCHAR(100),

    PRIMARY KEY (movie_id, actor_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id)
        ON DELETE CASCADE,

    FOREIGN KEY (actor_id)
        REFERENCES actors(actor_id)
        ON DELETE CASCADE
);


-- Movie Directors table

CREATE TABLE movie_directors (
    movie_id INT,
    director_id INT,

    PRIMARY KEY (movie_id, director_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id)
        ON DELETE CASCADE,

    FOREIGN KEY (director_id)
        REFERENCES directors(director_id)
        ON DELETE CASCADE
);


-- Movie Genres table

CREATE TABLE movie_genres (
    movie_id INT,
    genre_id INT,

    PRIMARY KEY (movie_id, genre_id),

    FOREIGN KEY (movie_id)
        REFERENCES movies(movie_id)
        ON DELETE CASCADE,

    FOREIGN KEY (genre_id)
        REFERENCES genres(genre_id)
        ON DELETE CASCADE
);