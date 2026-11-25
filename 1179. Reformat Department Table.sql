SELECT Department.id,
MAX(if(month='Jan',revenue,null))AS Jan_Revenue,
MAX(if(month='Feb',revenue,null))AS Feb_Revenue,
Max(if(month='Mar',revenue,null))AS Mar_Revenue,
MAX(if(month='Apr',revenue,null))AS Apr_Revenue,
Max(if(month='May',revenue,null))AS May_Revenue,
MAX(if(month='Jun',revenue,null))AS Jun_Revenue,
MAX(if(month='Jul',revenue,null))AS Jul_Revenue,
MAX(if(month='AUG',revenue,null))AS Aug_Revenue,
MAX(if(month='SEP',revenue,null))AS Sep_Revenue,
MAX(if(month='OCT',revenue,null))AS Oct_Revenue,
MAX(if(month='NOV',revenue,null))AS Nov_Revenue,
MAX(if(month='DEC',revenue,null))AS Dec_Revenue
FROM Department
GROUP BY id
ORDER BY id
