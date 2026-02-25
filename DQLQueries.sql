SELECT 
    first_name, last_name, salary
FROM
    employees
LIMIT 5;

SELECT DISTINCT
    manufacturer AS 'Производители лекарств в аптеке РогВардз'
FROM
    medicines;
    
SELECT *
FROM posts
LIMIT 1
OFFSET 5;

SELECT *
FROM posts
LIMIT 1
OFFSET 5;