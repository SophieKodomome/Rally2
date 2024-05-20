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
    FOREIGN KEY (id_special) REFERENCES Special(id)
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

CREATE OR REPLACE VIEW v_time AS
SELECT
    v_racers.id_racers AS id_racer,
    v_racers.name_racers AS name_racers,
    v_racers.id_category AS id_categorie,
    v_racers.name_category AS name_category,
    Time.point AS point,
    Time.id_special AS id_special,
    Special.name AS name_special,
    Time.minute AS minute,
    Time.second AS second,
    Time.millisecond AS millisecond
FROM 
    v_racers 
JOIN 
    Time
ON 
    v_racers.id_racers = Time.id_racers
JOIN
    Special
ON Time.id_special = Special.id;

INSERT INTO Special(name) VALUES('Special 1');
INSERT INTO Special(name) VALUES('Special 2');
INSERT INTO Special(name) VALUES('Special 3');
INSERT INTO Special(name) VALUES('Special 4');
INSERT INTO Special(name) VALUES('Special 5');
INSERT INTO Special(name) VALUES('Special 6');

INSERT INTO Category(name) VALUES('B');
INSERT INTO Category(name) VALUES('C');
INSERT INTO Category(name) VALUES('D');

INSERT INTO Racers(name,id_category) VALUES('Concurrent 1',1);
INSERT INTO Racers(name,id_category) VALUES('Concurrent 2',2);
INSERT INTO Racers(name,id_category) VALUES('Concurrent 3',2);
INSERT INTO Racers(name,id_category) VALUES('Concurrent 4',3);
INSERT INTO Racers(name,id_category) VALUES('Concurrent 5',3);
INSERT INTO Racers(name,id_category) VALUES('Concurrent 6',3);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (1,6,0,0,0,0);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (2,6,0,0,0,0);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (3,6,0,0,0,0);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (4,6,0,0,0,0);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (5,6,0,0,0,0);

INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,1,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,2,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,3,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,4,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,5,0,0,0,0);
INSERT INTO Time(id_racers,id_special,point,minute,second,millisecond) VALUES (6,6,0,0,0,0);