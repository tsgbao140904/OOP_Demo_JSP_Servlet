CREATE DATABASE social_network;
USE social_network;

-- Bảng users
CREATE TABLE users (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       username VARCHAR(255) NOT NULL UNIQUE,
                       password varchar(255) NOT NULL,
                       role VARCHAR(50) NOT NULL,
                       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Bảng follows
CREATE TABLE follows (
                         following_user_id INT NOT NULL,
                         followed_user_id INT NOT NULL,
                         created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         PRIMARY KEY (following_user_id, followed_user_id),
                         FOREIGN KEY (following_user_id) REFERENCES users(id) ON DELETE CASCADE,
                         FOREIGN KEY (followed_user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Bảng posts
CREATE TABLE posts (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       title VARCHAR(255) NOT NULL,
                       body TEXT NOT NULL,
                       user_id INT NOT NULL,
                       status VARCHAR(50) NOT NULL,
                       Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users(username, password, role) value('admin123','123456','admin');
ALTER TABLE posts MODIFY status ENUM('pending', 'approved', 'rejected') DEFAULT 'pending';