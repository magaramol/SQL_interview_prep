# Data Science Interview Preparation Repository

Welcome to the **Data Science Interview Preparation** repository! This repository contains a comprehensive guide to important SQL concepts and practical problems frequently asked in data science interviews. It covers everything from SQL commands to complex queries, providing valuable resources for anyone looking to strengthen their SQL skills for data science roles.

### Table of Contents
- **Data Definition Language (DDL)**
- **Data Manipulation Language (DML)**
- **Data Control Language (DCL)**
- **Transaction Control Language (TCL)**
- **Data Query Language (DQL)**
- **Joins**
- **Aggregate Functions**
- **Set Operators**
- **Order of Appearance and Execution in SELECT**
- **DELETE vs TRUNCATE**
- **DROP vs TRUNCATE**
- **HAVING vs WHERE**
- **OLTP vs OLAP**
- **ACID Properties**
- **UNION vs UNION ALL**
- **Common Table Expressions (CTEs)**
- **Window Functions**

---

## SQL Concepts and Frequently Asked Questions

### Data Definition Language (DDL)
DDL commands define and modify database structure:
- **CREATE**: Create new tables/databases.
- **ALTER TABLE**: Modify table structure.
- **DROP**: Delete tables/databases.
- **TRUNCATE**: Remove records without deleting the table.
- **ADD COLUMN**: Add columns to an existing table.

### Data Manipulation Language (DML)
DML commands manipulate data:
- **UPDATE**: Modify existing records.
- **DELETE**: Remove records.
- **INSERT**: Add new records.

### Data Control Language (DCL)
DCL commands control access:
- **GRANT**: Assign privileges.
- **REVOKE**: Remove privileges.

### Transaction Control Language (TCL)
TCL commands manage transactions:
- **COMMIT**: Save changes.
- **ROLLBACK**: Undo changes.
- **SAVEPOINT**: Set partial rollbacks.

### Data Query Language (DQL)
DQL retrieves data:
- **SELECT**: Query data from one or more tables.

### Joins and Types of Joins
SQL joins combine rows from multiple tables:
- **INNER JOIN**: Returns matching records from both tables.
- **LEFT JOIN**: All records from the left table + matching right table records.
- **RIGHT JOIN**: All records from the right table + matching left table records.
- **FULL JOIN**: Combines all records from both tables.

### Aggregate Functions
Functions that return summary values:
- **AVG()**, **SUM()**, **MIN()**, **MAX()**, **COUNT()**, **FIRST()**, **LAST()**.

### Set Operators
Combine results of multiple queries:
- **UNION**: Removes duplicates.
- **UNION ALL**: Includes duplicates.
- **INTERSECT**, **EXCEPT**.

### Order of Appearance in SELECT
- **SELECT – FROM – JOIN – ON – WHERE – GROUP BY – HAVING – ORDER BY – LIMIT**

### Order of Execution in SELECT
- **FROM – JOIN – ON – WHERE – GROUP BY – HAVING – SELECT – ORDER BY – LIMIT**

### DELETE vs TRUNCATE
- **DELETE**: Removes specific rows; can be rolled back.
- **TRUNCATE**: Removes all rows; irreversible and faster.

### DROP vs TRUNCATE
- **DROP**: Deletes the table and structure.
- **TRUNCATE**: Clears table contents but keeps the structure.

### HAVING vs WHERE
- **HAVING**: Filters after aggregation.
- **WHERE**: Filters individual rows before aggregation.

### OLTP vs OLAP
- **OLTP**: Transactional, real-time processing.
- **OLAP**: Analytical, querying large datasets.

### ACID Properties
- **Atomicity**, **Consistency**, **Isolation**, **Durability** for reliable transactions.

### UNION vs UNION ALL
- **UNION**: Removes duplicates.
- **UNION ALL**: Keeps duplicates, faster.

### Common Table Expressions (CTEs)
Temporary result sets using `WITH` keyword for simplifying queries.

### Window Functions
Perform operations across a set of table rows:
- **ROW_NUMBER()**, **RANK()**, **DENSE_RANK()**, **SUM() OVER()**.

---

## SQL Interview Problems Repository

In addition to the concepts, this repository also provides solutions to **complex SQL problems** frequently encountered in interviews. The examples focus on topics such as:

1. **Cricket Match Results**
   - Convert ICC World Cup match results into a summary table of total wins and losses for each team.
   
2. **Customer Orders Analysis**
   - Track repeat and new customer counts per day by designing a query that works with an orders table.
   
These problems come with explanations and code snippets in both SQL and **pandas** to showcase the versatility of both approaches.

---

This repository is a perfect resource for anyone preparing for a data science interview, offering both foundational SQL knowledge and hands-on practice with real-world problems. Dive in and start preparing for your next data science role!
