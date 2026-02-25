CREATE TABLE players
(
    id    INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(200),
    score    	INT
);
CREATE TABLE students (
    id    INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(30) NOT NULL,
    last_name    VARCHAR(30) NOT NULL,
    patronymic    VARCHAR(30) DEFAULT 'undefined',
    age    INT NOT NULL CHECK (age > 6)
);
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    details VARCHAR(50) DEFAULT NULL,
    join_date DATE NOT NULL,
    avatar TEXT,
    is_active BOOLEAN NOT NULL,
    knowledge INT NOT NULL DEFAULT 0,
    reputation INT NOT NULL DEFAULT 0,
    followers_count INT NOT NULL DEFAULT 0,
    days_without_break INT NOT NULL DEFAULT 0,
    days_without_break_max INT NOT NULL DEFAULT 0,
    solved_tasks INT NOT NULL DEFAULT 0
);
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL,
    details VARCHAR(50),
    join_date DATE NOT NULL,
    avatar TEXT,
    is_active BOOLEAN NOT NULL,
    knowledge INT NOT NULL DEFAULT 0,
    reputation INT NOT NULL DEFAULT 0,
    followers_count INT NOT NULL DEFAULT 0,
    days_without_break INT NOT NULL DEFAULT 0,
    days_without_break_max INT NOT NULL DEFAULT 0,
    solved_tasks INT NOT NULL DEFAULT 0
);
CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    created_date DATE NOT NULL,
    summary TEXT,
    photo TEXT,
    price DECIMAL NOT NULL
);
CREATE TABLE user_courses (
    user_id INT,
    course_id INT,
    is_favorite BOOLEAN NOT NULL,
    is_pinned BOOLEAN NOT NULL,
    is_archived BOOLEAN NOT NULL,
    last_viewed DATE NOT NULL,
    PRIMARY KEY (user_id , course_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (course_id) REFERENCES courses (id)
);