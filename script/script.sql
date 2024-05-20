CREATE DATABASE rally;
\c rally;

CREATE TABLE Special(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE Category(
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE Racers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    id_category INT,
    FOREIGN KEY (id_category) REFERENCES Category(id)
);

CREATE TABLE Time(
    id_racers INT,
    id_special INT,
    point INT NOT NULL,
    minute INT NOT NULL,
    second INT NOT NULL,
    millisecond INT NOT NULL,
    FOREIGN KEY (id_racers) REFERENCES Racers(id),
    FOREIGN KEY (id_special) REFERENCES Special(id),
    CONSTRAINT point_not_negative CHECK (point<0),
    CONSTRAINT minute_not_negative CHECK (minute<0),
    CONSTRAINT second_not_negative CHECK (second<0),
    CONSTRAINT millisecond_not_negative CHECK (millisecond<0)
);

CREATE OR REPLACE VIEW v_racers AS
SELECT 
    Racers.id AS id_racers,
    Racers.name AS name_racers,
    Racers.id_category AS id_category,
    Category.name AS name_category
FROM 
    Racers 
JOIN 
    Category
ON 
    Racers.id_category = Category.id;

CREATE OR REPLACE VIEW v_time as
    SELECT
        id_racers.v_racers,
        name_racers.v_racers,
        id_category.v_racers,
        name_category.v_racers,
        id_special.Time,
        minute.Time,
        second.Time,
        millisecond.Time
    FROM v_racers JOIN Time
    ON v_racers.id_racers=Time.id_racers;