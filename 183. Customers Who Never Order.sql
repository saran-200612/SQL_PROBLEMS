# Write your MySQL query statement below
select 
    name as Customers
    from Customers c 
   Left join  Orders o ON c.id=o.customerId where o.customerId is NULL;
