# Write your MySQL query statement below
SELECT Distinct
      email as Email
      from Person Group by email HAVING count(*)>1;
