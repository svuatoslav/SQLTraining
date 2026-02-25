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

UPDATE chats 
SET 
    name = 'My best friends'
WHERE
    name = 'My friends';
    
SELECT * FROM kv_posts
WHERE likes > 60
ORDER BY post_date;

SELECT date, temperature
FROM weather_forecasts 
WHERE date LIKE"2023%"
ORDER BY temperature DESC, date DESC
LIMIT  5;

SELECT name, price, discount 
FROM games
WHERE price <= 80000 AND (genre = "Action" OR genre ="Adventure")
ORDER BY discount DESC, name;

SELECT name, category, requests_count
FROM services 
WHERE category = "Миграционная служба"
ORDER BY requests_count DESC
LIMIT 5;

SELECT title, release_year, rating, genre 
FROM movies 
WHERE genre = "Horror" 
    AND release_year > 2010
    AND rating IS NOT NULL
ORDER BY rating DESC
LIMIT 3;

SELECT
    title,
    summary,
    price
FROM courses
WHERE title LIKE '%Linux%'
ORDER BY created_date ASC;

SELECT
    full_name AS "Пользователь",
    knowledge AS "Знания"
FROM users
WHERE is_active = TRUE
ORDER BY knowledge DESC
LIMIT 3;

SELECT
    full_name AS "Пользователь",
    reputation AS "Репутация"
FROM users
WHERE is_active = TRUE
ORDER BY reputation DESC
LIMIT 5;

SELECT
    metal_name,
    ROUND( (melting_point_fahrenheit - 32) * 5 / 9, 1 ) AS melting_point_celsius
FROM measurements
ORDER BY melting_point_celsius DESC;

SELECT
    virus_name,
    ROUND(damage_level_percentage / 10, 1) AS damage_level_tenths
FROM virus_damage
ORDER BY damage_level_tenths ASC;

SELECT
    antivirus_name,
    ROUND(
        (detection_percentage - false_positive_rate)
        / (system_impact * price),
        2
    ) AS optimality_coefficient
FROM antivirus_efficiencys
ORDER BY optimality_coefficient DESC
LIMIT 5;

SELECT
    CONCAT(
        UPPER(name),
        ' - ',
        type,
        ': ',
        direction
    ) AS summary
FROM programming_languages
WHERE direction LIKE '%веб-разработка%'
ORDER BY
    popularity DESC,
    name ASC;

SELECT
    UPPER(CONCAT(mission_name, ' ', YEAR(launch_date))) AS mission_name,
    status,
    CONCAT(LEFT(description, 30), '...') AS short_description
FROM missions
WHERE mission_name LIKE '%Mars%'
ORDER BY launch_date DESC;

SELECT
    CONCAT(name, ' (', TRIM(alias), ')') AS name
FROM hackers
ORDER BY last_seen_date DESC
LIMIT 3;

SELECT
    client,
    SUBSTRING_INDEX(address, ',', 1) AS ip,
    TRIM(SUBSTRING_INDEX(segment, 'домашняя сеть,', -1)) AS segment,
    SUBSTRING_INDEX(connection, ' ', 1) AS connection
FROM clients
WHERE segment LIKE '%2,4 ГГц%'
ORDER BY client ASC;

SELECT
    client,
    SUBSTRING_INDEX(address, ',', 1) AS ip,
    TRIM(SUBSTRING_INDEX(segment, 'домашняя сеть,', -1)) AS segment,
    SUBSTRING_INDEX(connection, ' ', 1) AS connection
FROM clients
WHERE segment LIKE '%5 ГГц%'
ORDER BY client ASC;

SELECT
    *
FROM orders
WHERE delivery_date IS NULL
  AND DATEDIFF('2023-07-28', order_date) > 10
ORDER BY order_date;

SELECT
    user_id,
    username,
    DATE_FORMAT(usage_date, '%Y-%m-%d') AS usage_date,
    storage_used
FROM storage_usage
WHERE usage_date >= '2023-07-01'
  AND usage_date < '2023-08-01';

