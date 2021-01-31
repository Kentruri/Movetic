CREATE DATABASE database_links;

USE database_links;

CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
  ADD PRIMARY KEY (id);

ALTER TABLE users
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE users;

CREATE TABLE links (
   id INT(11) NOT NULL,
   title VARCHAR(150) NOT NULL,
   url VARCHAR(255) NOT NULL,
   description TEXT,
   user_id INT(11),
   created_at timestamp NOT NULL DEFAULT current_timestamp,
   CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)

);

ALTER TABLE links
   ADD PRIMARY KEY (id);

ALTER TABLE links
   MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

DESCRIBE links;

ALTER TABLE users CHANGE `fullname` `name`;

ALTER TABLE users add numcel int(20) NOT NULL;

ALTER TABLE users add email VARCHAR(50) NOT NULL;

ALTER TABLE users add adress VARCHAR(50) NOT NULL;

ALTER TABLE users add fotoPerfil VARCHAR(1000) default "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcincodias.elpais.com%2Fcincodias%2F2016%2F07%2F04%2Flifestyle%2F1467646262_522853.html&psig=AOvVaw387juusIZvBqIncwGKiJU_&ust=1612134382838000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCq5dzixO4CFQAAAAAdAAAAABAD";