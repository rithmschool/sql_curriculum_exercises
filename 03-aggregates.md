# Aggregates Exercises

### Part 1

Let's start with the following sql file called `data.sql`

```sql
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
```


```sh
psql < data.sql
psql aggregates_exercise
```

Write the following queries to perform the following

- Calculate the total calories for all the snacks. Call this column `total_calories`

- Calculate the average price for all the snacks. Call this column `average_price`

- Calculate the lowest price for all the snacks. Call this column `lowest_price`

- Calculate the highest price for all the snacks. Call this column `highest_price`

- Find the count for each kind of candy in the table. Your output should look like this

```sql
/*
    kind     | count
-------------+-------
 frozen      |     1
 chips       |     5
 baked goods |     5
 yogurt      |     1
 beverage    |     2
 candy bar   |     5
 fruit snack |     2
*/
```

- Find the count of each kind of candy where the count is greater than one. Your output should look like this:

```sql
/*
    kind     | count
-------------+-------
 chips       |     5
 baked goods |     5
 beverage    |     2
 candy bar   |     5
 fruit snack |     2
*/
```

- Find the average number of calories for each kind of candy and call the name of your column that contains the average `average_calories`. Order your output by the kind of candy in ascending order. Your ouput should look like this.


```sql
/*
    kind     | average_calories
-------------+------------------
 baked goods |              298
 beverage    |              210
 candy bar   |              340
 chips       |              306
 frozen      |             2000
 fruit snack |              320
 yogurt      |              260
*/
```

- Find the average number of calories for each kind of candy and call the name of your column that contains the average `average_calories`. You should only select a `kind` that starts with the letter `b` and has an average calories less than `250` Order your output by the kind of candy in ascending order. Your ouput should look like this.


```sql
/*
   kind   | average_calories
----------+------------------
 beverage |              210
*/
```

psql aggregates_exercise;
psql (10.1)
Type "help" for help.

//WORK//

aggregates_exercise=# SELECT * FROM snacks;
 id |         name          |    kind     | calories | price
----+-----------------------+-------------+----------+-------
  1 | snickers              | candy bar   |      300 |  2.99
  2 | cupcakes              | baked goods |      260 |  2.49
  3 | cake                  | baked goods |      400 |  3.99
  4 | potato chips          | chips       |      500 |  4.99
  5 | milky way             | candy bar   |      220 |  7.99
  6 | cheetos               | chips       |      250 | 11.99
  7 | chocolate chip cookie | baked goods |      290 |  2.89
  8 | 3 musketeers          | candy bar   |      230 |  1.99
  9 | cheese its            | chips       |      100 |  0.99
 10 | funions               | chips       |      280 |  2.39
 11 | fig newtons           | baked goods |      240 |  3.99
 12 | fruit roolup          | fruit snack |      420 |  5.39
 13 | gushers               | fruit snack |      220 |  3.38
 14 | gogurt                | yogurt      |      260 |  5.32
 15 | capri sun             | beverage    |      300 |  1.49
 16 | sunny D               | beverage    |      120 |  3.99
 17 | ice cream             | frozen      |     2000 |  5.29
 18 | rice krispies         | baked goods |      300 |  1.99
 19 | pringles              | chips       |      400 |  2.39
 20 | twix                  | candy bar   |      450 |   2.9
 21 | payday                | candy bar   |      500 |  2.39
(21 rows)

aggregates_exercise=# SELECT SUM(calories) AS total_calories FROM snacks;
 total_calories
----------------
           8040
(1 row)

aggregates_exercise=# SELECT * FROM snacks;
 id |         name          |    kind     | calories | price
----+-----------------------+-------------+----------+-------
  1 | snickers              | candy bar   |      300 |  2.99
  2 | cupcakes              | baked goods |      260 |  2.49
  3 | cake                  | baked goods |      400 |  3.99
  4 | potato chips          | chips       |      500 |  4.99
  5 | milky way             | candy bar   |      220 |  7.99
  6 | cheetos               | chips       |      250 | 11.99
  7 | chocolate chip cookie | baked goods |      290 |  2.89
  8 | 3 musketeers          | candy bar   |      230 |  1.99
  9 | cheese its            | chips       |      100 |  0.99
 10 | funions               | chips       |      280 |  2.39
 11 | fig newtons           | baked goods |      240 |  3.99
 12 | fruit roolup          | fruit snack |      420 |  5.39
 13 | gushers               | fruit snack |      220 |  3.38
 14 | gogurt                | yogurt      |      260 |  5.32
 15 | capri sun             | beverage    |      300 |  1.49
 16 | sunny D               | beverage    |      120 |  3.99
 17 | ice cream             | frozen      |     2000 |  5.29
 18 | rice krispies         | baked goods |      300 |  1.99
 19 | pringles              | chips       |      400 |  2.39
 20 | twix                  | candy bar   |      450 |   2.9
 21 | payday                | candy bar   |      500 |  2.39
(21 rows)

aggregates_exercise=# SELECT AVG(price) AS average_price FROM snacks;
  average_price   
------------------
 3.86761904898144
(1 row)

aggregates_exercise=# SELECT MIN(price) AS lowest_price FROM snacks;
 lowest_price
--------------
         0.99
(1 row)

aggregates_exercise=# SELECT MAX(price) AS highest_price FROM snacks;
 highest_price
---------------
         11.99
(1 row)

aggregates_exercise=# SELECT kind, COUNT(kind) FROM snacks GROUP BY kind;
    kind     | count
-------------+-------
 fruit snack |     2
 candy bar   |     5
 beverage    |     2
 yogurt      |     1
 baked goods |     5
 chips       |     5
 frozen      |     1
(7 rows)

aggregates_exercise=# SELECT kind, COUNT(kind) FROM snacks GROUP BY kind HAVING COUNT(kind) > 1;
    kind     | count
-------------+-------
 fruit snack |     2
 candy bar   |     5
 beverage    |     2
 baked goods |     5
 chips       |     5
(5 rows)

aggregates_exercise=# SELECT kind, AVG(calories) FROM snacks GROUP BY kind;
    kind     |          avg          
-------------+-----------------------
 fruit snack |  320.0000000000000000
 candy bar   |  340.0000000000000000
 beverage    |  210.0000000000000000
 yogurt      |  260.0000000000000000
 baked goods |  298.0000000000000000
 chips       |  306.0000000000000000
 frozen      | 2000.0000000000000000
(7 rows)

aggregates_exercise=# SELECT kind, round(AVG(calories))::numeric  FROM snacks GROUP BY kind ORDER BY kind ASC;
    kind     | round
-------------+-------
 baked goods |   298
 beverage    |   210
 candy bar   |   340
 chips       |   306
 frozen      |  2000
 fruit snack |   320
 yogurt      |   260
(7 rows)

aggregates_exercise=# SELECT * FROM snacks;
 id |         name          |    kind     | calories | price
----+-----------------------+-------------+----------+-------
  1 | snickers              | candy bar   |      300 |  2.99
  2 | cupcakes              | baked goods |      260 |  2.49
  3 | cake                  | baked goods |      400 |  3.99
  4 | potato chips          | chips       |      500 |  4.99
  5 | milky way             | candy bar   |      220 |  7.99
  6 | cheetos               | chips       |      250 | 11.99
  7 | chocolate chip cookie | baked goods |      290 |  2.89
  8 | 3 musketeers          | candy bar   |      230 |  1.99
  9 | cheese its            | chips       |      100 |  0.99
 10 | funions               | chips       |      280 |  2.39
 11 | fig newtons           | baked goods |      240 |  3.99
 12 | fruit roolup          | fruit snack |      420 |  5.39
 13 | gushers               | fruit snack |      220 |  3.38
 14 | gogurt                | yogurt      |      260 |  5.32
 15 | capri sun             | beverage    |      300 |  1.49
 16 | sunny D               | beverage    |      120 |  3.99
 17 | ice cream             | frozen      |     2000 |  5.29
 18 | rice krispies         | baked goods |      300 |  1.99
 19 | pringles              | chips       |      400 |  2.39
 20 | twix                  | candy bar   |      450 |   2.9
 21 | payday                | candy bar   |      500 |  2.39
(21 rows)

aggregates_exercise=# SELECT SUM(calories) AS total_calories FROM snacks;
 total_calories
----------------
           8040
(1 row)

aggregates_exercise=# SELECT * FROM snacks;
 id |         name          |    kind     | calories | price
----+-----------------------+-------------+----------+-------
  1 | snickers              | candy bar   |      300 |  2.99
  2 | cupcakes              | baked goods |      260 |  2.49
  3 | cake                  | baked goods |      400 |  3.99
  4 | potato chips          | chips       |      500 |  4.99
  5 | milky way             | candy bar   |      220 |  7.99
  6 | cheetos               | chips       |      250 | 11.99
  7 | chocolate chip cookie | baked goods |      290 |  2.89
  8 | 3 musketeers          | candy bar   |      230 |  1.99
  9 | cheese its            | chips       |      100 |  0.99
 10 | funions               | chips       |      280 |  2.39
 11 | fig newtons           | baked goods |      240 |  3.99
 12 | fruit roolup          | fruit snack |      420 |  5.39
 13 | gushers               | fruit snack |      220 |  3.38
 14 | gogurt                | yogurt      |      260 |  5.32
 15 | capri sun             | beverage    |      300 |  1.49
 16 | sunny D               | beverage    |      120 |  3.99
 17 | ice cream             | frozen      |     2000 |  5.29
 18 | rice krispies         | baked goods |      300 |  1.99
 19 | pringles              | chips       |      400 |  2.39
 20 | twix                  | candy bar   |      450 |   2.9
 21 | payday                | candy bar   |      500 |  2.39
(21 rows)

aggregates_exercise=# SELECT AVG(price) AS average_price FROM snacks;
  average_price   
------------------
 3.86761904898144
(1 row)

aggregates_exercise=# SELECT MIN(price) AS lowest_price FROM snacks;
 lowest_price
--------------
         0.99
(1 row)

aggregates_exercise=# SELECT MAX(price) AS highest_price FROM snacks;
 highest_price
---------------
         11.99
(1 row)

aggregates_exercise=# SELECT kind, COUNT(kind) FROM snacks GROUP BY kind;
    kind     | count
-------------+-------
 fruit snack |     2
 candy bar   |     5
 beverage    |     2
 yogurt      |     1
 baked goods |     5
 chips       |     5
 frozen      |     1
(7 rows)

aggregates_exercise=# SELECT kind, COUNT(kind) FROM snacks GROUP BY kind HAVING COUNT(kind) > 1;
    kind     | count
-------------+-------
 fruit snack |     2
 candy bar   |     5
 beverage    |     2
 baked goods |     5
 chips       |     5
(5 rows)

aggregates_exercise=# SELECT kind, AVG(calories) FROM snacks GROUP BY kind;
    kind     |          avg          
-------------+-----------------------
 fruit snack |  320.0000000000000000
 candy bar   |  340.0000000000000000
 beverage    |  210.0000000000000000
 yogurt      |  260.0000000000000000
 baked goods |  298.0000000000000000
 chips       |  306.0000000000000000
 frozen      | 2000.0000000000000000
(7 rows)

aggregates_exercise=# SELECT kind, round(AVG(calories))::numeric  FROM snacks GROUP BY kind ORDER BY kind ASC;
    kind     | round
-------------+-------
 baked goods |   298
 beverage    |   210
 candy bar   |   340
 chips       |   306
 frozen      |  2000
 fruit snack |   320
 yogurt      |   260
(7 rows)




### Part 2 - Codewars

Complete the following Codewars problems:

[https://www.codewars.com/kata/sql-basics-simple-sum](https://www.codewars.com/kata/sql-basics-simple-sum)

[https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql](https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-distinct/train/sql](https://www.codewars.com/kata/sql-basics-simple-distinct/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql](https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-having/train/sql](https://www.codewars.com/kata/sql-basics-simple-having/train/sql)
