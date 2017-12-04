# CRUD Exercises

### Part 1

Write the SQL commands necessary to do the following:

1. Create a database called `first_assignment`
2. Connect to that database
3. Create a table called `products` with columns for:
    - `id`, which should be a unique auto-incremementing integer
    - `name`, which should be text, and not nullable
    - `price`, which should be a floating point number, and greater than zero
    - `can_be_returned`, which should be a boolean, and not nullable

4. Add a product to the table with the name of "chair", price of 44.00, and can_be_returned of false.
5. Add a product to the table with the name of "stool", price of 25.99, and can_be_returned of true.
5. Add a product to the table with the name of "table", price of 124.00, and can_be_returned of false.
6. Display all of the rows and columns in the table.
7. Display all of the names of the products.
8. Display all of the names and prices of the products.
9. Add a new product - make up whatever you would like!
10. Display only the products that `can_be_returned`.
12. Display only the products that have a price less than 44.00
13. Display only the products that have a price in between 22.50 and 99.99

// psql 
georgettehernandez=# CREATE DATABASE first_assignment;
CREATE DATABASE
georgettehernandez=#
georgettehernandez=# \c first_assignment;
You are now connected to database "first_assignment" as user "georgettehernandez".
first_assignment=# CREATE TABLE products (id SERIAL PRIMARY KEY, name TEXT NOT NULL, price MONEY (price > 0), can_be_returned BOOLEAN NOT NULL);
ERROR:  type modifier is not allowed for type "money"
LINE 1: ...(id SERIAL PRIMARY KEY, name TEXT NOT NULL, price MONEY (pri...
                                                             ^
first_assignment=# CREATE TABLE products (id SERIAL PRIMARY KEY, name TEXT NOT NULL, price MONEY (price > 0), can_be_returned BOOLEAN NOT NULL);
ERROR:  type modifier is not allowed for type "money"
LINE 1: ...(id SERIAL PRIMARY KEY, name TEXT NOT NULL, price MONEY (pri...
                                                             ^
first_assignment=# CREATE TABLE products (id SERIAL PRIMARY KEY, name TEXT NOT NULL, price REAL CHECK (price > 0), can_be_returned BOOLEAN NOT NULL);
CREATE TABLE
first_assignment=# SELECT * FROM products
first_assignment-# SELECT * FROM products;
ERROR:  syntax error at or near "SELECT"
LINE 2: SELECT * FROM products;
        ^
first_assignment=# SELECT * FROM products;
 id | name | price | can_be_returned
----+------+-------+-----------------
(0 rows)

first_assignment=# INSERT INTO products(name, price, can_be_returned) VALUES ('chair', 44.00, false);
INSERT 0 1
first_assignment=# INSERT INTO products(name, price, can_be_returned) VALUES ('stool', 25.99, true);
INSERT 0 1
first_assignment=# INSERT INTO products(name, price, can_be_returned) VALUES ('table', 124.00, false);
INSERT 0 1
first_assignment=# SELECT * FROM products;
 id | name  | price | can_be_returned
----+-------+-------+-----------------
  1 | chair |    44 | f
  2 | stool | 25.99 | t
  3 | table |   124 | f
(3 rows)

first_assignment=# SELECT name FROM products;
 name  
-------
 chair
 stool
 table
(3 rows)

first_assignment=# SELECT name, price FROM products;
 name  | price
-------+-------
 chair |    44
 stool | 25.99
 table |   124
(3 rows)

first_assignment=# INSERT INTO products(name, price, can_be_returned) VALUES ('sofa', 599.99, true);
INSERT 0 1
first_assignment=# SELECT name, FROM products WHERE can_be_returned=true;
ERROR:  syntax error at or near "FROM"
LINE 1: SELECT name, FROM products WHERE can_be_returned=true;
                     ^
first_assignment=# SELECT name FROM products WHERE can_be_returned=true;
 name  
-------
 stool
 sofa
(2 rows)

first_assignment=# SELECT name FROM products WHERE price < 44;
 name  
-------
 stool
(1 row)

first_assignment=# SELECT name FROM products WHERE 22.50 < price < 99.99;
ERROR:  syntax error at or near "<"
LINE 1: SELECT name FROM products WHERE 22.50 < price < 99.99;
                                                      ^
first_assignment=# SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.99;
 name  
-------
 chair
 stool
(2 rows)



### Part 2 - Codewars

Complete the following Codewars problems:

[https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql](https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql)

[https://www.codewars.com/kata/1-find-all-active-students/train/sql](https://www.codewars.com/kata/1-find-all-active-students/train/sql)
