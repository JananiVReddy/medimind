CREATE DATABASE medimind;

USE medimind;

CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE reports(
    report_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    report_name VARCHAR(255),
    report_summary TEXT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
