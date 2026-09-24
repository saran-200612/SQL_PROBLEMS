# 🗄️ SQL Problems & Practice

A collection of **SQL and MySQL practice problems, queries, and solutions** created to strengthen my understanding of SQL, database concepts, and problem-solving for technical interviews and placement assessments.

This repository documents my practical SQL learning journey — from basic queries and filtering to joins, aggregation, subqueries, and advanced SQL concepts.

---

## 🎯 Purpose

The main purpose of this repository is to build strong SQL fundamentals through consistent hands-on practice.

I use this repository to:

* Practice writing SQL queries.
* Understand relational database concepts.
* Improve query-solving skills.
* Prepare for SQL coding assessments.
* Prepare for technical interviews.
* Learn different SQL query patterns.
* Understand how tables can be combined and analyzed.
* Practice writing efficient and readable queries.
* Strengthen MySQL skills through problem solving.

---

## 🛠️ Technology

### MySQL / SQL

The primary SQL dialect used for this repository is **MySQL**.

The practice focuses on writing queries using standard SQL concepts supported by MySQL.

---

# 📚 Topics Covered

The repository covers SQL concepts progressively, starting from fundamentals and moving toward interview-oriented problems.

## 1. Basic SQL

Fundamental SQL operations include:

```sql
SELECT
FROM
WHERE
ORDER BY
DISTINCT
LIMIT
```

These concepts form the foundation for retrieving and filtering data from relational tables.

---

## 2. Filtering Data

Practice includes filtering records using:

```sql
WHERE
AND
OR
NOT
IN
BETWEEN
LIKE
IS NULL
IS NOT NULL
```

Example:

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

---

## 3. Sorting

Queries involving:

```sql
ORDER BY
ASC
DESC
```

Example:

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

---

## 4. Aggregate Functions

Practice with:

```sql
COUNT()
SUM()
AVG()
MIN()
MAX()
```

Example:

```sql
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id;
```

---

## 5. GROUP BY

Used to group rows based on one or more columns.

Example:

```sql
SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id;
```

---

## 6. HAVING

Used to filter grouped results.

Example:

```sql
SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;
```

### Important Difference

```text
WHERE
→ Filters rows before grouping.

HAVING
→ Filters groups after GROUP BY.
```

---

# 🔗 SQL JOINS

One of the major areas of SQL practice is joining multiple tables.

## INNER JOIN

Returns matching records from both tables.

```sql
SELECT *
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;
```

---

## LEFT JOIN

Returns all records from the left table and matching records from the right table.

```sql
SELECT *
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
```

---

## RIGHT JOIN

Returns all records from the right table and matching records from the left table.

```sql
SELECT *
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;
```

---

## CROSS JOIN

Produces combinations between rows of two tables.

```sql
SELECT *
FROM employees
CROSS JOIN departments;
```

---

## SELF JOIN

A table can be joined with itself.

This is particularly useful for hierarchical data such as:

```text
Employee → Manager
```

Example:

```sql
SELECT e.name AS employee,
       m.name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;
```

---

# 🔍 SUBQUERIES

Subqueries are queries written inside another query.

Example:

```sql
SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

Practice includes:

* Scalar subqueries
* Subqueries with `IN`
* Subqueries with `EXISTS`
* Correlated subqueries
* Nested queries

---

# 🧩 EXISTS

`EXISTS` is useful when we only need to check whether a related record exists.

Example:

```sql
SELECT *
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);
```

---

# 📊 CASE

`CASE` is used to implement conditional logic inside SQL queries.

Example:

```sql
SELECT name,
       salary,
       CASE
           WHEN salary >= 80000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;
```

---

# 🪟 WINDOW FUNCTIONS

Advanced SQL practice includes window functions such as:

```sql
ROW_NUMBER()
RANK()
DENSE_RANK()
```

Example:

```sql
SELECT name,
       salary,
       RANK() OVER (
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees;
```

Window functions are particularly important for SQL interviews because they allow calculations across related rows without collapsing the result into groups.

---

# 🔢 Common SQL Functions

Practice also includes commonly used MySQL functions.

### String Functions

```sql
CONCAT()
SUBSTRING()
LOWER()
UPPER()
LENGTH()
TRIM()
REPLACE()
```

### Numeric Functions

```sql
ROUND()
CEIL()
FLOOR()
ABS()
MOD()
```

### Date Functions

```sql
CURDATE()
NOW()
YEAR()
MONTH()
DAY()
DATEDIFF()
```

---

# 🗃️ Database Concepts

Along with query writing, this repository helps reinforce fundamental database concepts such as:

* Tables
* Rows
* Columns
* Primary Keys
* Foreign Keys
* Relationships
* Constraints
* Normalization
* Referential Integrity
* CRUD operations
* Relational databases

---

# 🧠 Problem-Solving Approach

For each SQL problem, I follow a structured approach:

```text
Understand the problem
        ↓
Identify required tables
        ↓
Identify required columns
        ↓
Understand relationships
        ↓
Determine filtering conditions
        ↓
Choose JOIN / GROUP BY / Subquery / Window Function
        ↓
Write the query
        ↓
Test the query
        ↓
Optimize and simplify
```

---

# 💡 SQL Interview Patterns

The repository is intended to build familiarity with common interview patterns such as:

### Finding the second highest salary

```sql
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

### Finding duplicate values

```sql
SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

### Finding records without matching data

```sql
SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

### Ranking records

```sql
SELECT name,
       salary,
       DENSE_RANK() OVER (
           ORDER BY salary DESC
       ) AS rnk
FROM employees;
```

These patterns are useful for understanding how different SQL concepts combine to solve practical problems.

---

# 📁 Repository Organization

SQL problems can be organized into categories such as:

```text
SQL_P_
```
