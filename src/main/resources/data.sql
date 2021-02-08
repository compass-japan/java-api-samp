DROP DATABASE IF EXISTS javaapi;
CREATE DATABASE IF NOT EXISTS javaapi;
USE goapi;

DROP TABLE IF EXISTS WEATHER;
CREATE TABLE IF NOT EXISTS WEATHER
(
dat char(8) NOT NULL,
weather int NOT NULL,
location_id int NOT NULL,
comment varchar(255),
PRIMARY KEY(dat, location_id)
);

INSERT INTO WEATHER
(
dat, weather, location_id, comment
)
VALUES
("20200101", 1, 1, "test comment");

DROP TABLE IF EXISTS LOCATION;
CREATE TABLE IF NOT EXISTS LOCATION
(
id int PRIMARY KEY,
city varchar(20) NOT NULL
);

INSERT INTO LOCATION VALUES
(1, "新宿"),
(2, "中野");
