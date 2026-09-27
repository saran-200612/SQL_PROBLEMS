SELECT user_id,email
From USers
WHERE email REGEXP'^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
ORDER BY user_id;
