DROP TABLE IF EXISTS Zoo_animal;
CREATE TABLE IF NOT EXISTS Zoo_animal(
    animal_id INTEGER PRIMARY KEY,
    name      TEXT    NOT NULL,
    species   TEXT    NOT NULL,
    age_years INTEGER NOT NULL,
    weight_kg REAL    NOT NULL
);

INSERT INTO Zoo_animal VALUES (1,'lion', 'Big cat', 5, 190.0);
INSERT INTO Zoo_animal VALUES (2,'Tiger','Big cat', 3, 220.0);
INSERT INTO Zoo_animal VALUES (3,'Elephant','pachyderm',12,4500.0);
INSERT INTO Zoo_animal VALUES (4,'Giraffe','Even-toed ungulate', 8, 1200.0);
INSERT INTO Zoo_animal VALUES (5,'penguin','Bird',2,5.0);
INSERT INTO Zoo_animal VALUES (6,'panda','bear',2,5.0);
INSERT INTO Zoo_animal VALUES (7,'cheetah','Big cat',4,55.0);
INSERT INTO Zoo_animal VALUES (8,'Rhino','pachyderm',7,2300.0);

SELECT * FROM Zoo_animal;

SELECT species FROM Zoo_animal;

SELECT DISTINCT species FROM Zoo_animal;

SELECT count(DISTINCT species) AS unique_species FROM Zoo_animal;

SELECT count(animal_id) AS total_animals FROM Zoo_animal;

SELECT COUNT (animal_id) AS older_than_5 FROM Zoo_animal WHERE age_years > 5;

SELECT SUM (weight_kg) AS total_weight_kg FROM Zoo_animal;

SELECT AVG (age_years) AS avg_age_years FROM Zoo_animal;

SELECT
     COUNT(animal_id)        AS total_animals,
     COUNT(DISTINCT species) AS unique_species,
     SUM(weight_kg)          AS total_weight_kg,
     AVG(age_years)          AS avg_age_years
FROM Zoo_animal; 