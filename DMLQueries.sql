insert into chats (id, name, description, created_at, admin_id) 
values
(1, 'My friends', 'Chat with my friends', NOW(), 123),
(2, 'Work', 'Chat for work', NOW(), 456),
(3, 'Family', 'Chat with my family', NOW(), 789);

UPDATE chats 
SET 
    name = 'My best friends'
WHERE
    name = 'My friends';
    
INSERT INTO users (full_name, details, join_date, avatar, is_active, knowledge, reputation, followers_count, days_without_break, days_without_break_max, solved_tasks) VALUES
('Иван Иванов', 'Студент МГУ', '2021-01-01', 'https://example.com/avatar1.jpg', true, 100, 50, 20, 10, 15, 30),
('Анастасия Петрова', 'Программист в Яндексе', '2020-05-15', 'https://example.com/avatar2.jpg', true, 200, 100, 50, 5, 10, 60),
('Дмитрий Смирнов', 'Аналитик данных', '2019-12-31', 'https://example.com/avatar3.jpg', false, 300, 150, 75, 0, 20, 90);

INSERT INTO courses (title, created_date, summary, photo, price) VALUES
('Основы программирования на Python', '2021-01-01', 'Курс для начинающих программистов', 'https://example.com/course1.jpg', 5000),
('Машинное обучение', '2020-05-15', 'Курс по машинному обучению для продвинутых', 'https://example.com/course2.jpg', 10000),
('Анализ данных', '2019-12-31', 'Курс по анализу данных', 'https://example.com/course3.jpg', 7000);

INSERT INTO user_courses (user_id, course_id, is_favorite, is_pinned, is_archived, last_viewed) VALUES
(1, 1, true, false, false, '2021-01-05'),
(1, 2, false, true, false, '2021-01-10'),
(2, 3, false, false, true, '2021-01-01'),
(3, 1, true, true, false, '2021-01-15');

select * from users;
select * from courses;
select * from user_courses;