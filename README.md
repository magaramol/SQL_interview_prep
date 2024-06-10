# Data Science Interview Preparation

Welcome to the Data Science Interview Preparation repository! This repository contains important concepts and examples related to SQL, which are frequently asked during data science interviews. 

## Table of Contents

- [Data Definition Language (DDL)](#data-definition-language-ddl)
- [Data Manipulation Language (DML)](#data-manipulation-language-dml)
- [Data Control Language (DCL)](#data-control-language-dcl)
- [Transaction Control Language (TCL)](#transaction-control-language-tcl)
- [Data Query Language (DQL)](#data-query-language-dql)
- [Joins](#what-is-a-join)
- [Types of Joins](#what-types-of-joins-do-you-know)
- [Aggregate Functions](#what-aggregate-functions-do-you-know)
- [Set Operators](#what-set-operators-do-you-know)
- [Order of Appearance in SELECT](#what-is-the-order-of-appearance-of-the-common-statements-in-the-select-query)
- [Order of Execution in SELECT](#in-which-order-the-interpreter-executes-the-common-statements-in-the-select-query)
- [DELETE vs TRUNCATE](#what-is-the-difference-between-delete-and-truncate-statements)
- [DROP vs TRUNCATE](#what-is-the-difference-between-the-drop-and-truncate-statements)
- [HAVING vs WHERE](#what-is-the-difference-between-the-having-and-where-statements)
- [OLTP vs OLAP](#oltp-vs-olap)
- [ACID Properties](#what-is-the-acid-property-in-a-database)
- [UNION vs UNION ALL](#what-is-the-difference-between-union-and-union-all)
- [Common Table Expressions (CTEs)](#what-are-ctes-common-table-expressions)
- [Window Functions](#how-do-you-use-a-window-function-in-sql)

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

- **(INNER) JOIN**: Returns only those records that satisfy a defined join condition in both (or all) tables. It's a default SQL join.
- **LEFT (OUTER) JOIN**: Returns all records from the left table and those records from the right table that satisfy a defined join condition.
- **RIGHT (OUTER) JOIN**: Returns all records from the right table and those records from the left table that satisfy a defined join condition.
- **FULL (OUTER) JOIN**: Returns all records from both (or all) tables. It can be considered as a combination of left and right joins.

## What aggregate functions do you know?

- **AVG()**: Returns the average value
- **SUM()**: Returns the sum of values
- **MIN()**: Returns the minimum value
- **MAX()**: Returns the maximum value
- **COUNT()**: Returns the number of rows, including those with null values
- **FIRST()**: Returns the first value from a column
- **LAST()**: Returns the last value from a column

## What set operators do you know?

- **UNION**: Returns the records obtained by at least one of two queries (excluding duplicates)
- **UNION ALL**: Returns the records obtained by at least one of two queries (including duplicates)
- **INTERSECT**: Returns the records obtained by both queries
- **EXCEPT (called MINUS in MySQL and Oracle)**: Returns only the records obtained by the first query but not the second one

## What is the order of appearance of the common statements in the SELECT query?

SELECT – FROM – JOIN – ON – WHERE – GROUP BY – HAVING – ORDER BY – LIMIT

## In which order the interpreter executes the common statements in the SELECT query?

FROM – JOIN – ON – WHERE – GROUP BY – HAVING – SELECT – ORDER BY – LIMIT

## What is the difference between DELETE and TRUNCATE statements?

| DELETE | TRUNCATE |
| --- | --- |
| DELETE command is used to delete a row in a table. | TRUNCATE is used to delete all the rows from a table. |
| You can rollback data after using DELETE statement. | You cannot rollback data. |
| It is a DML command. | It is a DDL command. |
| It is slower than TRUNCATE statement. | It is faster. |

## What is the difference between the DROP and TRUNCATE statements?

DROP deletes a table from the database completely, including the table structure and all the associated constraints, relationships with other tables, and access privileges. TRUNCATE deletes all rows from a table without affecting the table structure and constraints. DROP works slower than TRUNCATE. Both are irreversible DDL (Data Definition Language) commands.

## What is the difference between the HAVING and WHERE statements?

The first one works on aggregated data after they are grouped, while the second one checks each row individually. If both statements are present in a query, they appear in the following order: WHERE – GROUP BY – HAVING. The SQL engine interprets them also in the same order.

## OLTP vs OLAP

OLTP, or online transactional processing, allows huge groups of people to execute massive amounts of database transactions in real time, usually via the internet. A database transaction occurs when data in a database is changed, inserted, deleted, or queried.

### What are the differences between OLTP and OLAP?

- **OLTP** stands for online transaction processing, whereas **OLAP** stands for online analytical processing.
- OLTP is an online database modification system, whereas OLAP is an online database query response system.

## What is the ACID property in a database?

ACID stands for Atomicity, Consistency, Isolation, Durability. It is used to ensure that the data transactions are processed reliably in a database system. 

- **Atomicity**: Refers to the transactions that are completely done or failed where transaction refers to a single logical operation of a data. It means if one part of any transaction fails, the entire transaction fails and the database state is left unchanged.
- **Consistency**: Ensures that the data must meet all the validation rules. In simple words, your transaction never leaves the database without completing its state.
- **Isolation**: The main goal of isolation is concurrency control.
- **Durability**: Means that if a transaction has been committed, it will occur whatever may come in between such as power loss, crash or any sort of error.

## What is the difference between UNION and UNION ALL?

- **UNION** merges the outcomes of two or more SELECT statements, removing duplicate rows.
- **UNION ALL** merges the results without removing duplicates. While UNION ALL is faster, it may include duplicate rows.

## What are CTEs (Common Table Expressions)?

Common Table Expressions (CTEs) serve as momentary result sets that you can mention within SQL statements, typically found within SELECT, INSERT, UPDATE, or DELETE operations. They're established using the `WITH` keyword and are instrumental in streamlining intricate queries by dividing them into more digestible components.

## How do you use a window function in SQL?

Window functions are employed to carry out computations on a group of table rows that are associated with the current row. They enable the generation of result sets containing aggregated data while retaining the distinct details of each row. Typical window functions encompass ROW_NUMBER(), RANK(), DENSE_RANK(), and SUM() OVER().
