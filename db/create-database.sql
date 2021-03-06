DROP DATABASE IF EXISTS blog;

CREATE DATABASE blog CHARACTER SET utf8;

USE blog;

CREATE TABLE users
(
  id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  password_hash VARCHAR(100),
  full_name VARCHAR(200)
);

CREATE UNIQUE INDEX username_UNIQUE ON users (username);

CREATE TABLE posts
(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    content TEXT NOT NULL,
    date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    user_id INT(11),
    CONSTRAINT fk_users_posts FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE INDEX fk_users_posts_idx ON posts (user_id);

CREATE TABLE parts
(
  id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  part_name VARCHAR(30) NOT NULL,
  description VARCHAR(40) NOT NULL,
  date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  car_kilometers int(11),
  part_life int(11),
  service_name TEXT NOT NULL,
  archive VARCHAR(3),
  date_replaced DATETIME,
  part_price int (11),
  user_id INT(11),
  CONSTRAINT fk_users_parts FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE INDEX fk_users_parts_idx ON parts (user_id);

