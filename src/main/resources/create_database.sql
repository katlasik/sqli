USE mysql;

DROP DATABASE IF EXISTS secret;
CREATE DATABASE secret DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP USER IF EXISTS secret_user;

CREATE USER 'secret_user'@'%' IDENTIFIED BY 'pass';
GRANT ALL ON secret.* TO 'secret_user'@'%';
GRANT SUPER ON *.* TO 'secret_user'@'%';
FLUSH PRIVILEGES;

CREATE TABLE secret.users(
    id INT PRIMARY KEY,
    login VARCHAR(200),
    password VARCHAR(200)
);

INSERT INTO secret.users(id,login,secret.users.password) VALUES(1, 'admin', 's3cr3t');
