# SQL Fundamentals

Answer the following questions:

- What is an `RDBMS`? Relational database management system. The basis for Postgres and other SQL systems.


- What is the difference between `RDBMS` and `SQL`? SQL a language (structured query language). RDBMS is a relational database management system based on the relational model. It's the basis for SQL.


- What is a relational database? A relational database is one structured so that relationships can be established between tables.


- What is ACID? ACID stands for atomicity, consistency, isolation, and durability. Atomicity means that if a transaction involves 2+ pieces of info, either all or none of the pieces are committed. Consistency means that transactions either create new, valid states of data, or returns all data to its previous state if there's a failure. Isolation means that any ongoing transaction must be isolated from others. Durability means that committed data is saved and protected from failure events.


- What is the CAP Theorem? CAP stands for consistency, availability, and partition tolerance, where only 2 of the 3 are possible at once. Consistency means that all servers have the same data so users get the same copy regardless of the server answering. Availability means that the system will always respond to a request. Partition tolerance means that the system operates as a whole even if individual servers fail.


- How do you connect to a database in `psql`? `\c DATABASE_NAME;`


- How do you create a database in `psql`? `CREATE DATABASE DATABASE_NAME`


- How do you create a database in the terminal? `createdb DATABASE_NAME`


- How do you show all of your databases in `psql`? `\l`

