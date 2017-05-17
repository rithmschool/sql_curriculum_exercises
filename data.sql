DROP DATABASE IF EXISTS  aggregates_exercise;

CREATE DATABASE aggregates_exercise;

\c aggregates_exercise

CREATE TABLE snacks (id SERIAL PRIMARY KEY, name TEXT, kind TEXT, calories INTEGER, price REAL);

INSERT INTO snacks (name, kind, calories, price) VALUES ('snickers', 'candy bar', 300, 2.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('cupcakes', 'baked goods', 260, 2.49);
INSERT INTO snacks (name, kind, calories, price) VALUES ('cake', 'baked goods', 400, 3.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('potato chips', 'chips', 500, 4.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('milky way', 'candy bar', 220, 7.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('cheetos', 'chips', 250, 11.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('chocolate chip cookie', 'baked goods', 290, 2.89);
INSERT INTO snacks (name, kind, calories, price) VALUES ('3 musketeers', 'candy bar', 230, 1.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('cheese its', 'chips', 100, 0.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('funions', 'chips', 280, 2.39);
INSERT INTO snacks (name, kind, calories, price) VALUES ('fig newtons', 'baked goods', 240, 3.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('fruit roolup', 'fruit snack', 420, 5.39);
INSERT INTO snacks (name, kind, calories, price) VALUES ('gushers', 'fruit snack', 220, 3.38);
INSERT INTO snacks (name, kind, calories, price) VALUES ('gogurt', 'yogurt', 260, 5.32);
INSERT INTO snacks (name, kind, calories, price) VALUES ('capri sun', 'beverage', 300, 1.49);
INSERT INTO snacks (name, kind, calories, price) VALUES ('sunny D', 'beverage', 120, 3.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('ice cream', 'frozen', 2000, 5.29);
INSERT INTO snacks (name, kind, calories, price) VALUES ('rice krispies', 'baked goods', 300, 1.99);
INSERT INTO snacks (name, kind, calories, price) VALUES ('pringles', 'chips', 400, 2.39);
INSERT INTO snacks (name, kind, calories, price) VALUES ('twix', 'candy bar', 450, 2.90);
INSERT INTO snacks (name, kind, calories, price) VALUES ('payday', 'candy bar', 500, 2.39);