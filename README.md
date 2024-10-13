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
  ```sql
  CREATE TABLE Employees (
      EmployeeID INT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName VARCHAR(50),
      HireDate DATE
  );
  ```

- **ALTER TABLE**: Modify table structure.
  ```sql
  ALTER TABLE Employees
  ADD Email VARCHAR(100);
  ```

- **DROP**: Delete tables/databases.
  ```sql
  DROP TABLE Employees;
  ```

- **TRUNCATE**: Remove records without deleting the table.
  ```sql
  TRUNCATE TABLE Employees;
  ```

- **ADD COLUMN**: Add columns to an existing table.
  ```sql
  ALTER TABLE Employees
  ADD Phone VARCHAR(15);
  ```

### Data Manipulation Language (DML)
DML commands manipulate data:
- **UPDATE**: Modify existing records.
  ```sql
  UPDATE Employees
  SET Email = 'john.doe@example.com'
  WHERE EmployeeID = 1;
  ```

- **DELETE**: Remove records.
  ```sql
  DELETE FROM Employees
  WHERE EmployeeID = 1;
  ```

- **INSERT**: Add new records.
  ```sql
  INSERT INTO Employees (FirstName, LastName, HireDate, Email)
  VALUES ('John', 'Doe', '2023-01-01', 'john.doe@example.com');
  ```

### Data Control Language (DCL)
DCL commands control access:
- **GRANT**: Assign privileges.
  ```sql
  GRANT SELECT, INSERT ON Employees TO 'user'@'localhost';
  ```

- **REVOKE**: Remove privileges.
  ```sql
  REVOKE INSERT ON Employees FROM 'user'@'localhost';
  ```

### Transaction Control Language (TCL)
TCL commands manage transactions:
- **COMMIT**: Save changes.
  ```sql
  COMMIT;
  ```

- **ROLLBACK**: Undo changes.
  ```sql
  ROLLBACK;
  ```

- **SAVEPOINT**: Set partial rollbacks.
  ```sql
  SAVEPOINT Savepoint1;
  ```

### Data Query Language (DQL)
DQL retrieves data:
- **SELECT**: Query data from one or more tables.
  ```sql
  SELECT * FROM Employees;
  ```

### Joins and Types of Joins
SQL joins combine rows from multiple tables:
- **INNER JOIN**: Returns matching records from both tables.
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```

- **LEFT JOIN**: All records from the left table + matching right table records.
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```

- **RIGHT JOIN**: All records from the right table + matching left table records.
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```

- **FULL JOIN**: Combines all records from both tables.
  ```sql
  SELECT Employees.FirstName, Departments.DepartmentName
  FROM Employees
  FULL JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
  ```

### Aggregate Functions
Functions that return summary values:
- **AVG()**: Returns the average value.
  ```sql
  SELECT AVG(Salary) AS AverageSalary FROM Employees;
  ```

- **SUM()**: Returns the sum of values.
  ```sql
  SELECT SUM(Salary) AS TotalSalary FROM Employees;
  ```

- **MIN()**: Returns the minimum value.
  ```sql
  SELECT MIN(Salary) AS MinimumSalary FROM Employees;
  ```

- **MAX()**: Returns the maximum value.
  ```sql
  SELECT MAX(Salary) AS MaximumSalary FROM Employees;
  ```

- **COUNT()**: Returns the number of rows, including those with null values.
  ```sql
  SELECT COUNT(*) AS EmployeeCount FROM Employees;
  ```

### Set Operators
Combine results of multiple queries:
- **UNION**: Removes duplicates.
  ```sql
  SELECT FirstName FROM Employees
  UNION
  SELECT FirstName FROM Contractors;
  ```

- **UNION ALL**: Includes duplicates.
  ```sql
  SELECT FirstName FROM Employees
  UNION ALL
  SELECT FirstName FROM Contractors;
  ```

- **INTERSECT**: Returns records obtained by both queries.
  ```sql
  SELECT FirstName FROM Employees
  INTERSECT
  SELECT FirstName FROM Managers;
  ```

- **EXCEPT**: Returns records from the first query but not the second one.
  ```sql
  SELECT FirstName FROM Employees
  EXCEPT
  SELECT FirstName FROM Contractors;
  ```

### Order of Appearance in SELECT
- **SELECT – FROM – JOIN – ON – WHERE – GROUP BY – HAVING – ORDER BY – LIMIT**

### Order of Execution in SELECT
- **FROM – JOIN – ON – WHERE – GROUP BY – HAVING – SELECT – ORDER BY – LIMIT**

### DELETE vs TRUNCATE
- **DELETE**: Removes specific rows; can be rolled back.
- **TRUNCATE**: Removes all rows; irreversible and faster.
  ```sql
  DELETE FROM Employees WHERE EmployeeID = 1; -- Can be rolled back
  TRUNCATE TABLE Employees; -- Cannot be rolled back
  ```

### DROP vs TRUNCATE
- **DROP**: Deletes the table and structure.
  ```sql
  DROP TABLE Employees;
  ```

- **TRUNCATE**: Clears table contents but keeps the structure.
  ```sql
  TRUNCATE TABLE Employees;
  ```

### HAVING vs WHERE
- **HAVING**: Filters after aggregation.
  ```sql
  SELECT DepartmentID, COUNT(*) AS EmployeeCount
  FROM Employees
  GROUP BY DepartmentID
  HAVING COUNT(*) > 10;
  ```

- **WHERE**: Filters individual rows before aggregation.
  ```sql
  SELECT * FROM Employees WHERE Salary > 50000;
  ```

### OLTP vs OLAP
- **OLTP**: Transactional, real-time processing.
- **OLAP**: Analytical, querying large datasets.

### ACID Properties
- **Atomicity**: Ensures transactions are fully completed or fully failed.
- **Consistency**: Data must meet all validation rules.
- **Isolation**: Controls concurrency.
- **Durability**: Ensures committed transactions persist.

### UNION vs UNION ALL
- **UNION**: Removes duplicates.
  ```sql
  SELECT FirstName FROM Employees
  UNION
  SELECT FirstName FROM Customers;
  ```

- **UNION ALL**: Keeps duplicates.
  ```sql
  SELECT FirstName FROM Employees
  UNION ALL
  SELECT FirstName FROM Customers;
  ```

### Common Table Expressions (CTEs)
Temporary result sets using the `WITH` keyword:
```sql
WITH EmployeeCounts AS (
    SELECT DepartmentID, COUNT(*) AS EmployeeCount
    FROM Employees
    GROUP BY DepartmentID
)
SELECT * FROM EmployeeCounts WHERE EmployeeCount > 10;
```

### Window Functions
Perform operations across a set of table rows:
```sql
SELECT FirstName, Salary, 
       RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;
```

---

## SQL Interview Problems Repository

In addition to the concepts, this repository also provides solutions to **complex SQL problems** frequently encountered in interviews. The examples focus on topics such as:

1. **Cricket Match Results**
   - Convert ICC World Cup match results into a summary table of total wins and losses for each team.
   ```sql
   SELECT Team, 
          SUM(CASE WHEN Result = 'Win' THEN 1 ELSE 0 END) AS TotalWins,
          SUM(CASE WHEN Result = 'Loss' THEN 1 ELSE 0 END) AS TotalLosses
   FROM MatchResults
   GROUP BY Team;
   ```

2. **Customer Orders Analysis**
   - Track repeat and new customer counts per day by designing a query that works with an orders table.
   ```sql
   SELECT OrderDate, 
          COUNT(CASE WHEN IsRepeat = 1 THEN 1 END) AS RepeatCustomers,
          COUNT(CASE WHEN IsRepeat = 0 THEN 1 END) AS NewCustomers
   FROM Orders
   GROUP BY OrderDate;
   ```

These problems come

 with **explanations** and **best practices** to help you understand the underlying concepts and improve your problem-solving skills.
