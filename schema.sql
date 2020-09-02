CREATE DATABASE coding_memelord;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE memes (
    id SERIAL PRIMARY KEY,
    title TEXT,
    meme TEXT,
    user_id INTEGER
);

CREATE TABLE likes (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    meme_id INTEGER
);