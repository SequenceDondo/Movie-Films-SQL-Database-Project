Create table films(
  name TEXT, 
  release_year INTEGER
);

INSERT INTO films(name, release_year)
VALUES ('Free Guy', 2021);

INSERT INTO films(name, release_year)
VALUES ('Dune', 2021);

INSERT INTO films(name, release_year)
VALUES ('Avengers:Endgame', 2019);

SELECT * FROM films WHERE release_year = 2019;

ALTER TABLE films ADD COLUMN runtime INTEGER;
ALTER TABLE films ADD COLUMN category TEXT;
ALTER TABLE films ADD COLUMN rating REAL;
ALTER TABLE films ADD COLUMN box_office BIGINT;

UPDATE films
SET runtime = 155,
    category = 'Action',
    rating = 7.2,
    box_office = 330745836   
WHERE name = 'Free Guy';

UPDATE films
SET runtime = 235,
    category = 'Adventure',
    rating = 8.3,
    box_office = 293684718   
WHERE name = 'Dune';

UPDATE films
SET runtime = 301,
    category = 'Action',
    rating = 8.4,
    box_office = 2797501328  
WHERE name = 'Avengers:Endgame';

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);
