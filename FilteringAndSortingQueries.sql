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

CREATE TABLE  courses_authors (
    course_id INT,
    user_id INT,
    FOREIGN KEY (course_id) REFERENCES courses (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    Primary Key (course_id, user_id)
);

CREATE TABLE certificates(
    user_id INT,
    course_id INT,
    grade INT NOT NULL,
    issue_date DATE NOT NULL,
    url TEXT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    Primary Key (course_id, user_id)
);

