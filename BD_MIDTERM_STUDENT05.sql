DROP TABLE IF EXISTS blue_river, blue_river_part1,blue_river_part2, blue_river_part3, blue_river_default;

CREATE TABLE blue_river (
"id" INT PRIMARY KEY,
description VARCHAR(100) NOTNULL,
"comments" VARCHAR(100) NOTNULL) PARTITION BY RANGE("id");

CREATE TABLE blue_river_part1 PARTITION OF blue_river FOR VALUES FROM (1) TO (3);

CREATE TABLE blue_river_part2 PARTITION OF blue_river FOR VALUES FROM (4) TO (6);

CREATE TABLE blue_river_part3 PARTITION OF blue_river FOR VALUES FROM (7) TO (9);

CREATE TABLE blue_river_default PARTITION OF blue_river DEFAULT;

INSERT INTO blue_river ("id" description "comments") VALUES (1, 'Single Kayaking','Equipment will be offered for an individual for kayaking');
INSERT INTO blue_river ("id" description "comments") VALUES (2, 'Scuba diving','Scuba divers has to get their own equipment and safety gear');
INSERT INTO blue_river ("id" description "comments") VALUES (3, 'Boating','People can get their own boats and can get rentals');
INSERT INTO blue_river ("id" description "comments") VALUES (4, 'Guided Tour','Guided tours will also be offered at affordable prices');
INSERT INTO blue_river ("id" description "comments") VALUES (5, 'Double Kayaking','Equipment will be offered for tourists');
INSERT INTO blue_river ("id" description "comments") VALUES (6, 'Indivdual Stalls','Boat owners can go for a ride');
INSERT INTO blue_river ("id" description "comments") VALUES (7, 'Restaurant','Food services will be provided at request');
INSERT INTO blue_river ("id" description "comments") VALUES (8, 'Entertainment','ENtertainment will be provided both musical and theatrical');
INSERT INTO blue_river ("id" description "comments") VALUES (9, 'Festivals','Special occasions can also be celebrated at reasonable prices');
INSERT INTO blue_river ("id" description "comments") VALUES (10, 'Closed','Will be closed on June 4th');

SELECT * FROM blue_river where blue_river.id = 1;