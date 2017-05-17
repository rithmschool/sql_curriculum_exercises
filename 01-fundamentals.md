# SQL Fundamentals

Answer the following questions:

- What is an `RDBMS`?
	
	Answer: A relational database management system is a database management system based on a "relational" model. This model was actually developed before the SQL language and is the basis for SQL and systems like MySQL, Postgres, Oracle, IBM DB2, Microsoft SQL Server and many more.
	
- What is the difference between `RDBMS` and `SQL`? 
	
	Answer: Structured Query Language is the standardized language for communicating with and managing data in relational database.
	
- What is a relational database? 

	Answer: a type of database that is structured so that relationships can be established among stored information. 

- What is ACID? 

	Answer: Atomicity (all-or-none), Consistency (guarantees that a transaction never leaves a database in a half-finished state), Isolation (keeps transactions separated from each other until they're finished), Durability (guarantees that the database will keep track of pending changes)

- What is the CAP Theorem? 

	Answer: Consistency, Availability, Partition Tolerance
	
- How do you connect to a database in `psql`?
	Answer: ```\c NAME_OF_DB```
	
- How do you create a database in `psql`?
	Answer: ```CREATE DATABASE name_of_db;```
	
- How do you create a database in the terminal?
	Answer: ```createdb name_of_db```
	
- How do you show all of your databases in `psql`?
	Answer: ```\l``` (to list databases)