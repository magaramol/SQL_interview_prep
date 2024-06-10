# Data Science Interview Preparation

Welcome to the Data Science Interview Preparation repository! This repository contains important concepts and examples related to SQL, which are frequently asked during data science interviews. 

## Table of Contents

- [Data Definition Language (DDL)](#data-definition-language-ddl)
- [Data Manipulation Language (DML)](#data-manipulation-language-dml)
- [Data Control Language (DCL)](#data-control-language-dcl)
- [Transaction Control Language (TCL)](#transaction-control-language-tcl)
- [Data Query Language (DQL)](#data-query-language-dql)

## Data Definition Language (DDL)

DDL commands are used to define and modify the structure of a database. These commands are crucial for creating and altering the schema of your database objects. Key DDL commands include:

- **CREATE**: Create new tables and databases.
- **ALTER TABLE**: Modify the structure of existing tables.
- **DROP**: Delete tables or databases.
- **TRUNCATE**: Remove all records from a table, but not the table itself.
- **ADD COLUMN**: Add new columns to an existing table.

## Data Manipulation Language (DML)

DML commands are used to access, manipulate, and modify data within the database. These commands are essential for data operations. Key DML commands include:

- **UPDATE**: Update existing records within a table.
- **DELETE**: Remove existing records from a table.
- **INSERT**: Insert new records into a table.

## Data Control Language (DCL)

DCL commands are used to control user access to the data within the database. These commands manage permissions and access rights. Key DCL commands include:

- **GRANT**: Grant specific privileges to a user or a group of users.
- **REVOKE**: Revoke specific privileges from a user or a group of users.

## Transaction Control Language (TCL)

TCL commands are used to manage transactions within the database, ensuring the integrity and consistency of data. Key TCL commands include:

- **COMMIT**: Save all changes made during the transaction.
- **SET TRANSACTION**: Set the properties for a transaction.
- **ROLLBACK**: Undo changes made during the current transaction.
- **SAVEPOINT**: Set a savepoint within a transaction for partial rollback.

## Data Query Language (DQL)

DQL commands are used to perform queries on the data within the database. These commands retrieve the necessary information from the database. The primary DQL command is:

- **SELECT**: Retrieve data from one or more tables.

## What is a join?

A clause used to combine and retrieve records from two or multiple tables. SQL tables can be joined based on the relationship between the columns of those tables. Check out our SQL joins tutorial for more context.


## What types of joins do you know?

    (INNER) JOIN – returns only those records that satisfy a defined join condition in both (or all) tables. It's a default SQL join.
    LEFT (OUTER) JOIN – returns all records from the left table and those records from the right table that satisfy a defined join condition.
    RIGHT (OUTER) JOIN – returns all records from the right table and those records from the left table that satisfy a defined join condition.
    FULL (OUTER) JOIN – returns all records from both (or all) tables. It can be considered as a combination of left and right joins.

## What aggregate functions do you know?

    AVG() – returns the average value
    SUM() – returns the sum of values
    MIN() – returns the minimum value
    MAX() – returns the maximum value
    COUNT() – returns the number of rows, including those with null values
    FIRST() – returns the first value from a column
    LAST()– returns the last value from a column


## What set operators do you know?

    UNION – returns the records obtained by at least one of two queries (excluding duplicates)
    UNION ALL – returns the records obtained by at least one of two queries (including duplicates)
    INTERSECT – returns the records obtained by both queries
    EXCEPT (called MINUS in MySQL and Oracle) – returns only the records obtained by the first query but not the second one
## What is the order of appearance of the common statements in the SELECT query?

SELECT – FROM – JOIN – ON – WHERE – GROUP BY – HAVING – ORDER BY – LIMIT


## In which order the interpreter executes the common statements in the SELECT query?

FROM – JOIN – ON – WHERE – GROUP BY – HAVING – SELECT – ORDER BY – LIMIT




##  What is the difference between the DELETE and TRUNCATE statements?

DELETE is a reversible DML (Data Manipulation Language) command used to delete one or more rows from a table based on the conditions specified in the WHERE clause. Instead, TRUNCATE is an irreversible DDL (Data Definition Language) command used to delete all rows from a table. DELETE works slower than TRUNCATE. Also, we can't use the TRUNCATE statement for a table containing a foreign key.

## What is the difference between the DROP and TRUNCATE statements?

DROP deletes a table from the database completely, including the table structure and all the associated constraints, relationships with other tables, and access privileges. TRUNCATE deletes all rows from a table without affecting the table structure and constraints. DROP works slower than TRUNCATE. Both are irreversible DDL (Data Definition Language) commands.

## What is the difference between the HAVING and WHERE statements?

The first one works on aggregated data after they are grouped, while the second one checks each row individually. If both statements are present in a query, they appear in the following order: WHERE – GROUP BY – HAVING. The SQL engine interprets them also in the same order.

