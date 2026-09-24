select 
      e.name,
      b.bonus
      From Employee e
      left join Bonus b
      on e.empId=b.empId Where b.bonus<1000 OR b.bonus IS NULL;
          
