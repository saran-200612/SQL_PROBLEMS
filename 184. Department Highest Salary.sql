SELECT 
     d.name AS Department,
     e.name AS Employee,
     e.salary AS Salary
     from Employee e JOIN Department d ON
     e.departmentId=d.id WHERE(e.departmentId,e.salary) IN( SELECT 
                       departmentId,
                       MAX(salary)
                       from Employee
                       Group BY departmentId
                       );
