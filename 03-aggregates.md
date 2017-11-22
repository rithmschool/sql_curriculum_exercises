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

### Part 2 - Codewars

Complete the following Codewars problems:

[https://www.codewars.com/kata/sql-basics-simple-sum](https://www.codewars.com/kata/sql-basics-simple-sum)

[https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql](https://www.codewars.com/kata/sql-basics-simple-min-slash-max/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-distinct/train/sql](https://www.codewars.com/kata/sql-basics-simple-distinct/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql](https://www.codewars.com/kata/sql-basics-simple-group-by/train/sql)

[https://www.codewars.com/kata/sql-basics-simple-having/train/sql](https://www.codewars.com/kata/sql-basics-simple-having/train/sql)
