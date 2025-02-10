INSERT INTO albums (name, year) VALUES
('Taylor Swift', 2006),
('Fake It Flowers', 2020),
('Euphoria Morning', 1999),
('bababoi', 2018);

INSERT INTO executors (name) VALUES
('Sabrina Carpenter'),
('Chris Cornell'),
('Beabadoobee'),
('Taylor Swift');

INSERT INTO genres (name) VALUES
('Pop'),
('Rock'),
('Indie');

INSERT INTO executorsalbums (executor_id, album_id) VALUES
(2, 3),
(3, 2),
(4, 1),
(3, 4);

INSERT INTO executorsgenres (executor_id, genre_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);

INSERT INTO collections (name, year) VALUES
('col1', 2013),
('col2', 2019),
('col3', 2009),
('col4', 2020);

INSERT INTO songs (name, duration, album_id) VALUES
('cant my', 203, 3),
('follow my way', 203, 3),
('cold as you', 240, 1),
('Care', 195, 2),
('Back To Mars', 91, 2),
('Stay Beautiful', 236, 1);

INSERT INTO songscollections(song_id, collection_id) VALUES
(2, 1),
(5, 1),
(3, 2),
(1, 2),
(2, 2),
(5, 3),
(6, 3),
(1, 4),
(3, 4),
(5, 4);