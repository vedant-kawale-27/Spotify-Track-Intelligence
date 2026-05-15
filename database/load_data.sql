-- Spotify Data Load Script
-- Make sure to copy dataset.csv to your MySQL secure_file_priv path first 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/'

USE spotify_db;

-- Load CSV into table
-- UPDATE THE PATH BELOW to match your secure_file_priv path
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dataset.csv'
INTO TABLE spotify_tracks
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(row_num, track_id, artists, album_name, track_name, popularity, duration_ms,
 explicit, danceability, energy, key_note, loudness, mode, speechiness,
 acousticness, instrumentalness, liveness, valence, tempo, time_signature, track_genre);

-- Verify load
SELECT COUNT(*) AS total_rows_loaded FROM spotify_tracks;
-- Expected: 114000

-- Preview data
SELECT * FROM spotify_tracks;
