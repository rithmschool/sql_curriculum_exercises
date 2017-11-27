# SQL Fundamentals

Answer the following questions:

- What is an `RDBMS`?

  Answer: Stands for: relational database management system. It is a database management system based on a relational model. The "archivist" that looks through the database.

- What is the difference between `RDBMS` and `SQL`?

  Answer: SQL is the language that communicates between the client and the RDBMS.

- What is a relational database?

  Answer: Relational database is a type of database

- What is ACID?

  Answer: Atomicity (all or none), consistency (ensures that a transaction never leaves a database in an unfinished state), Isolation (keeps trnasactions seperacted from each other until they're finished), Durability (keeps track of pending changes).

- What is the CAP Theorem?

  Answer: consistency, Availability, Partition Tolerance

- How do you connect to a database in `psql`?

  Answer: \c NAME_OF_DB

- How do you create a database in `psql`?

  Answer: CREATE DATABASE name_of_db

- How do you create a database in the terminal?

  Answer: createdb name_of_db

- How do you show all of your databases in `psql`?

    Answer: \l 
