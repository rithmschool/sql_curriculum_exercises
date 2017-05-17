# CRUD Exercises

### Part 1

Write the SQL commands necessary to do the following:

<<<<<<< 978a1330dfc22c89ce4c447abedcca0f2b846a72
1. Create a database called `first_assignment`
2. Connect to that database
=======
1. Create a database called `first-assignment` CREATE DATABASE first-assignment;
2. Connect to that database \c first-assignment
>>>>>>> sql exercises completed sections 1-3
3. Create a table called `products` with columns for:
    - `id`, which should be a unique auto-incremementing integer
    - `name`, which should be text 
    - `price`, which should be a floating point number
    - `can_be_returned`, which should be a boolean
    CREATE TABLE products (id SERIAL, name TEXT, price REAL, can_be_returned BOOLEAN);
4. Add a product to the table with the name of "chair", price of 44.00, and can_be_returned of false. INSERT INTO products(name, price, can_be_returned) VALUES ('chair', 44.00, false);
5. Add a product to the table with the name of "stool", price of 25.99, and can_be_returned of true. INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);
5. Add a product to the table with the name of "table", price of 124.00, and can_be_returned of false. INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);
6. Display all of the rows and columns in the table. SELECT * FROM products;
7. Display all of the names of the products. SELECT name FROM products;
8. Display all of the names and prices of the products. SELECT name, price FROM product;
9. Add a new product - make up whatever you would like! INSERT INTO products (name, price, can_be_returned) VALUES ('hairbrush', 9.87, true);
10. Display only the products that can_be_returned. SELECT name, price, can_be_returned FROM products WHERE can_be_returned=true;
12. Display only the products that have a price less than 44.00 SELECT name, price, can_be_returned FROM products WHERE price < 44.00;
13. Display only the products that have a price in between 22.50 and 99.99 SELECT name, price, can_be_returned FROM products WHERE 22.50 < price < 99.99;

### Part 2 - Codewars

Complete the following Codewars problems:

[https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql](https://www.codewars.com/kata/sql-basics-simple-where-and-order-by/train/sql)

[https://www.codewars.com/kata/1-find-all-active-students/train/sql](https://www.codewars.com/kata/1-find-all-active-students/train/sql)
