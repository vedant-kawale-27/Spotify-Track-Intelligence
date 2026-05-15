-- Spotify Analytics Database Setup
-- Run this file first before loading data

CREATE DATABASE spotify_db;
USE spotify_db;


CREATE TABLE spotify_tracks (
    row_num          INT,
    track_id         VARCHAR(100),
    artists          TEXT,
    album_name       TEXT,
    track_name       TEXT,
    popularity       INT,
    duration_ms      INT,
    explicit         VARCHAR(10),
    danceability     FLOAT,
    energy           FLOAT,
    key_note         INT,
    loudness         FLOAT,
    mode             INT,
    speechiness      FLOAT,
    acousticness     FLOAT,
    instrumentalness FLOAT,
    liveness         FLOAT,
    valence          FLOAT,
    tempo            FLOAT,
    time_signature   INT,
    track_genre      VARCHAR(100)
);
