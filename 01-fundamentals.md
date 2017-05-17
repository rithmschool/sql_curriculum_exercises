# SQL Fundamentals

Answer the following questions:

- What is an `RDBMS`? A relational database management system, which is the basis for SQL and systems like Postgres.
- What is the difference between `RDBMS` and `SQL`? SQL is a language to query databases. RDBMS is a database management system based on a model that is structured on information that is established based on relationships.
- What is a relational database?  A type of database that is structured to allow relationships to structure the data.
- What is ACID? Stands for Atomicity, Consistency, Isolation, Durability and is a concept that database professionals look for when evaluating databases and application architectures.
- What is the CAP Theorem? Says that it is impossible with a distributed database to guarantee consistency, availability, and partition tolerance at once. Generally, one has to choose between consistency and availability.
- How do you connect to a database in `psql`? \c name-database
- How do you create a database in `psql`? CREATE DATABASE name_database;
- How do you create a database in the terminal? createdb name-database
- How do you show all of your databases in `psql`? \l